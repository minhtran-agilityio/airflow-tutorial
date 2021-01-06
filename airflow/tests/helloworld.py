import airflow
from airflow.models import DagBag
import unittest


class TestHelloWorldDAG(unittest.TestCase):
    # @classmethod
    def setUp(self):
        self.dagbag = DagBag()
        self.dag = self.dagbag.get_dag(dag_id='helloworld')

    def test_dag_loaded(self):
        self.assertDictEqual(self.dagbag.import_errors, {})
        self.assertIsNotNone(self.dag)
        # self.assertEqual(len(self.dag.task), 3)

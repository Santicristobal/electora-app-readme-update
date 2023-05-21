from anvil_extras import routing

from ._anvil_designer import MainTemplate


@routing.default_template
class Main(MainTemplate):
    def __init__(self, **properties):
        self.init_components(**properties)

    def home_link_click(self, **event_args):
        routing.set_url_hash("")
import images

from robot.api.deco import keyword
from SikuliLibrary import SikuliLibrary

sikuli = SikuliLibrary()

@keyword("Clicking on Virtual Simulator")
def clicking_on_virtual_simulator():
    if sikuli.images.exists("ok.png"):
        sikuli.click("virtual_simulator.png")
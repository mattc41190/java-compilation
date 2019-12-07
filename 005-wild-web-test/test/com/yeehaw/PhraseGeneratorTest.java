package com.yeehaw;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class PhraseGeneratorTest {
  @Test
  public void generateString_returnsExpectedString() {
		String expected = "yeehaw buddy";
    PhraseGenerator pg = new PhraseGenerator();
    String result = pg.generateString();
    assertEquals(expected, result);
  }
}


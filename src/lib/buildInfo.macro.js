const { execSync } = require('child_process');

export default () => {
  var webRevision = execSync('git rev-parse --short HEAD').toString().trim();
  return `module.exports = ${JSON.stringify({ webRevision })}`;
};


-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE IF NOT EXISTS `employees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_id` INT NOT NULL,
  `group_id` INT NOT NULL,
  `employment_type_id` INT NOT NULL,
  FOREIGN KEY (`client_id`) REFERENCES clients(`id`),
  FOREIGN KEY (`group_id`) REFERENCES groups(`id`),
  FOREIGN KEY (`employment_type_id`) REFERENCES employment_types(`id`),
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP TABLE `employees`
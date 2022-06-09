﻿using System;
using System.Collections.Generic;

#nullable disable

namespace Online_Learn.Models
{
    public partial class Result
    {
        public Result()
        {
            ResultExams = new HashSet<ResultExam>();
        }

        public int ResultId { get; set; }
        public int ExamId { get; set; }
        public double? Score { get; set; }
        public bool? Status { get; set; }

        public virtual Exam Exam { get; set; }
        public virtual ICollection<ResultExam> ResultExams { get; set; }
    }
}
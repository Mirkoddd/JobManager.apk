.class Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;
.super Ljava/lang/Object;
.source "SummaryActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/SummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .registers 29
    .parameter "o"

    .prologue
    .line 149
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/controlpanel/StorageInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_1ad

    move-object/from16 v23, p1

    .line 150
    check-cast v23, Lcom/sec/android/app/controlpanel/StorageInfo;

    .line 152
    .local v23, s:Lcom/sec/android/app/controlpanel/StorageInfo;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getUsedSizeOfInternalSdCard()J

    move-result-wide v21

    .line 153
    .local v21, internalSDCardUsed:J
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfInternalSdCard()J

    move-result-wide v19

    .line 155
    .local v19, internalSDCardTotal:J
    const-wide/16 v24, 0x0

    cmp-long v24, v19, v24

    if-nez v24, :cond_1ae

    .line 156
    const/16 v18, 0x0

    .line 162
    .local v18, internalSDCardPercentage:I
    :goto_1c
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getUsedSizeOfExternalSdCard()J

    move-result-wide v16

    .line 163
    .local v16, externalSDCardUsed:J
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfExternalSdCard()J

    move-result-wide v14

    .line 165
    .local v14, externalSDCardTotal:J
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-nez v24, :cond_1bb

    .line 166
    const/4 v13, 0x0

    .line 171
    .local v13, externalSDCardPercentage:I
    :goto_2b
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getUsedSizeOfData()J

    move-result-wide v6

    .line 172
    .local v6, dataUsed:J
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfData()J

    move-result-wide v4

    .line 174
    .local v4, dataTotal:J
    const-wide/16 v24, 0x0

    cmp-long v24, v4, v24

    if-nez v24, :cond_1c6

    .line 175
    const/4 v3, 0x0

    .line 180
    .local v3, dataPercentage:I
    :goto_3a
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getUsedSizeOfDBData()J

    move-result-wide v11

    .line 181
    .local v11, dbDataUsed:J
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfDBData()J

    move-result-wide v9

    .line 183
    .local v9, dbDataTotal:J
    const-wide/16 v24, 0x0

    cmp-long v24, v9, v24

    if-nez v24, :cond_1d1

    .line 184
    const/4 v8, 0x0

    .line 190
    .local v8, dbDataPercentage:I
    :goto_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdCard:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdCard:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdProg:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdProg:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mData:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBData:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDataProg:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBDataProg:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 220
    .end local v3           #dataPercentage:I
    .end local v4           #dataTotal:J
    .end local v6           #dataUsed:J
    .end local v8           #dbDataPercentage:I
    .end local v9           #dbDataTotal:J
    .end local v11           #dbDataUsed:J
    .end local v13           #externalSDCardPercentage:I
    .end local v14           #externalSDCardTotal:J
    .end local v16           #externalSDCardUsed:J
    .end local v18           #internalSDCardPercentage:I
    .end local v19           #internalSDCardTotal:J
    .end local v21           #internalSDCardUsed:J
    .end local v23           #s:Lcom/sec/android/app/controlpanel/StorageInfo;
    :cond_1ad
    return-void

    .line 159
    .restart local v19       #internalSDCardTotal:J
    .restart local v21       #internalSDCardUsed:J
    .restart local v23       #s:Lcom/sec/android/app/controlpanel/StorageInfo;
    :cond_1ae
    const-wide/16 v24, 0x64

    mul-long v24, v24, v21

    div-long v24, v24, v19

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v18, v0

    .restart local v18       #internalSDCardPercentage:I
    goto/16 :goto_1c

    .line 168
    .restart local v14       #externalSDCardTotal:J
    .restart local v16       #externalSDCardUsed:J
    :cond_1bb
    const-wide/16 v24, 0x64

    mul-long v24, v24, v16

    div-long v24, v24, v14

    move-wide/from16 v0, v24

    long-to-int v13, v0

    .restart local v13       #externalSDCardPercentage:I
    goto/16 :goto_2b

    .line 177
    .restart local v4       #dataTotal:J
    .restart local v6       #dataUsed:J
    :cond_1c6
    const-wide/16 v24, 0x64

    mul-long v24, v24, v6

    div-long v24, v24, v4

    move-wide/from16 v0, v24

    long-to-int v3, v0

    .restart local v3       #dataPercentage:I
    goto/16 :goto_3a

    .line 186
    .restart local v9       #dbDataTotal:J
    .restart local v11       #dbDataUsed:J
    :cond_1d1
    const-wide/16 v24, 0x64

    mul-long v24, v24, v11

    div-long v24, v24, v9

    move-wide/from16 v0, v24

    long-to-int v8, v0

    .restart local v8       #dbDataPercentage:I
    goto/16 :goto_49
.end method

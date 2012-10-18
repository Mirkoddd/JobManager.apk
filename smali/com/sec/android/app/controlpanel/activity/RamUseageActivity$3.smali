.class Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;
.super Ljava/lang/Object;
.source "RamUseageActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .registers 12
    .parameter "o"

    .prologue
    .line 115
    instance-of v7, p1, Lcom/sec/android/app/controlpanel/MemoryInfo;

    if-eqz v7, :cond_4b

    move-object v2, p1

    .line 116
    check-cast v2, Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 117
    .local v2, m:Lcom/sec/android/app/controlpanel/MemoryInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getAvailMem()J

    move-result-wide v0

    .line 118
    .local v0, avail:J
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getTotalMemory()J

    move-result-wide v3

    .line 119
    .local v3, total:J
    sub-long v5, v3, v0

    .line 120
    .local v5, used:J
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v7, v7, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryAvailable:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v7, v7, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemGraph:Landroid/widget/ProgressBar;

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v5

    div-long/2addr v8, v3

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 125
    .end local v0           #avail:J
    .end local v2           #m:Lcom/sec/android/app/controlpanel/MemoryInfo;
    .end local v3           #total:J
    .end local v5           #used:J
    :cond_4b
    return-void
.end method

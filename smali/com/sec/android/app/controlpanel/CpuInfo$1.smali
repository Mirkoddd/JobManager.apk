.class Lcom/sec/android/app/controlpanel/CpuInfo$1;
.super Landroid/os/Handler;
.source "CpuInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/CpuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/CpuInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/CpuInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/CpuInfo$1;->this$0:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 153
    :goto_6
    return-void

    .line 139
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo$1;->this$0:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/CpuInfo;->init()V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo$1;->this$0:Lcom/sec/android/app/controlpanel/CpuInfo;

    #calls: Lcom/sec/android/app/controlpanel/CpuInfo;->processCpuUsage()V
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/CpuInfo;->access$000(Lcom/sec/android/app/controlpanel/CpuInfo;)V

    .line 141
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 146
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo$1;->this$0:Lcom/sec/android/app/controlpanel/CpuInfo;

    #calls: Lcom/sec/android/app/controlpanel/CpuInfo;->processCpuUsage()V
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/CpuInfo;->access$000(Lcom/sec/android/app/controlpanel/CpuInfo;)V

    .line 147
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 135
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_7
        :pswitch_17
    .end packed-switch
.end method

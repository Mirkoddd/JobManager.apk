.class Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;
.super Landroid/os/Handler;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/PackageInfo;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 258
    :goto_5
    return-void

    .line 246
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/controlpanel/PackageInfo;->m_bUpdateRunningApplicationInfoOnProgress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$302(Lcom/sec/android/app/controlpanel/PackageInfo;Z)Z

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningAppPackageList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->setRunningApplicationList(Ljava/util/List;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/controlpanel/PackageInfo;->m_bUpdateRunningApplicationInfoOnProgress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$302(Lcom/sec/android/app/controlpanel/PackageInfo;Z)Z

    goto :goto_5

    .line 240
    :pswitch_data_1e
    .packed-switch 0xc8596
        :pswitch_6
    .end packed-switch
.end method

.class Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field stats:Landroid/content/pm/PackageStats;

.field succeeded:Z

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/PackageInfo;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V

    return-void
.end method


# virtual methods
.method public invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .parameter "packageName"
    .parameter "count"

    .prologue
    .line 107
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    #getter for: Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->access$100(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 109
    return-void
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 4
    .parameter "pStats"
    .parameter "pSucceeded"

    .prologue
    .line 112
    iput-boolean p2, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->succeeded:Z

    .line 113
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    return-void
.end method

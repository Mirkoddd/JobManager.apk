.class public Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;
.super Ljava/lang/Object;
.source "CpuUsageComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v0

    .line 12
    .local v0, aCpu:F
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v1

    .line 14
    .local v1, bCpu:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_e

    .line 15
    const/4 v2, -0x1

    .line 19
    :goto_d
    return v2

    .line 16
    :cond_e
    cmpg-float v2, v0, v1

    if-gez v2, :cond_14

    .line 17
    const/4 v2, 0x1

    goto :goto_d

    .line 19
    :cond_14
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    check-cast p1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;->compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I

    move-result v0

    return v0
.end method

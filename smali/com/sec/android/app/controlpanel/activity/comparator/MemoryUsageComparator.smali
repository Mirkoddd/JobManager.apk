.class public Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;
.super Ljava/lang/Object;
.source "MemoryUsageComparator.java"

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
    .registers 11
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 11
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v6

    long-to-float v1, v6

    .line 12
    .local v1, aMem:F
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v6

    long-to-float v3, v6

    .line 14
    .local v3, bMem:F
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCategory()I

    move-result v0

    .line 15
    .local v0, aCategory:I
    invoke-virtual {p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCategory()I

    move-result v2

    .line 18
    .local v2, bCategory:I
    if-le v0, v2, :cond_17

    .line 29
    :cond_16
    :goto_16
    return v4

    .line 20
    :cond_17
    if-ge v0, v2, :cond_1b

    move v4, v5

    .line 21
    goto :goto_16

    .line 24
    :cond_1b
    cmpl-float v6, v1, v3

    if-lez v6, :cond_21

    move v4, v5

    .line 25
    goto :goto_16

    .line 26
    :cond_21
    cmpg-float v5, v1, v3

    if-ltz v5, :cond_16

    .line 29
    const/4 v4, 0x0

    goto :goto_16
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
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;->compare(Lcom/sec/android/app/controlpanel/PackageInfoItem;Lcom/sec/android/app/controlpanel/PackageInfoItem;)I

    move-result v0

    return v0
.end method

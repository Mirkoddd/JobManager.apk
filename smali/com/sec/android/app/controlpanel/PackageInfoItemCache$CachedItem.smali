.class public Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
.super Ljava/lang/Object;
.source "PackageInfoItemCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ecd227220L


# instance fields
.field private appName:Ljava/lang/String;

.field private codeSize:J

.field private dataSize:J

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 7
    .parameter "packageName"
    .parameter "appName"
    .parameter "codeSize"
    .parameter "dataSize"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->packageName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->appName:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->codeSize:J

    .line 38
    iput-wide p5, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->dataSize:J

    .line 39
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeSize()J
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->codeSize:J

    return-wide v0
.end method

.method public getDataSize()J
    .registers 3

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->dataSize:J

    return-wide v0
.end method

.class public abstract Lcom/coloros/settings/ringtone/a/a;
.super Ljava/lang/Object;
.source "AbstractFileComparator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/io/File;)I
    .locals 0

    .line 1082
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public abstract a(Ljava/io/File;Ljava/io/File;)I
.end method

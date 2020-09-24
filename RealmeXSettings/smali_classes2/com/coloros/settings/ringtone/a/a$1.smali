.class public final Lcom/coloros/settings/ringtone/a/a$1;
.super Ljava/lang/Object;
.source "AbstractFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/a/a;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/ringtone/a/a;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/coloros/settings/ringtone/a/a$1;->a:Lcom/coloros/settings/ringtone/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 25
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 1029
    invoke-static {p1}, Lcom/coloros/settings/ringtone/a/a;->a(Ljava/io/File;)I

    move-result v0

    .line 1030
    invoke-static {p2}, Lcom/coloros/settings/ringtone/a/a;->a(Ljava/io/File;)I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/a/a$1;->a:Lcom/coloros/settings/ringtone/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/ringtone/a/a;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

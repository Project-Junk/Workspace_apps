.class final Landroidx/media/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/g$a;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/media/g$a;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/media/g$a;

    iget-object p0, p0, Landroidx/media/g$a;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iget-object p1, p1, Landroidx/media/g$a;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media/g$a;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Landroidx/core/e/c;->a([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

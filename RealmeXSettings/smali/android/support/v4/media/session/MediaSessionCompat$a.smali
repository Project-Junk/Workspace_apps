.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$a;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$a$d;,
        Landroid/support/v4/media/session/MediaSessionCompat$a$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$a$b;,
        Landroid/support/v4/media/session/MediaSessionCompat$a$a;
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/MediaSessionCompat$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 974
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    .line 978
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 979
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$a$d;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$d;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    .line 2034
    new-instance v1, Landroid/support/v4/media/session/f$b;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/f$b;-><init>(Landroid/support/v4/media/session/f$a;)V

    .line 979
    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->b:Ljava/lang/Object;

    return-void

    .line 980
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 981
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$a$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    .line 3028
    new-instance v1, Landroid/support/v4/media/session/e$b;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/e$b;-><init>(Landroid/support/v4/media/session/e$a;)V

    .line 981
    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->b:Ljava/lang/Object;

    return-void

    .line 982
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 983
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$a$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    .line 3064
    new-instance v1, Landroid/support/v4/media/session/d$b;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/d$b;-><init>(Landroid/support/v4/media/session/d$a;)V

    .line 983
    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->b:Ljava/lang/Object;

    return-void

    .line 985
    :cond_2
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1072
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1075
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->e:Z

    .line 1076
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->removeMessages(I)V

    .line 1078
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$b;

    if-nez v0, :cond_1

    :cond_1
    return-void
.end method

.class public final Landroid/support/v4/media/session/PlaybackStateCompat$a;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:J

.field d:J

.field e:F

.field f:J

.field g:I

.field h:Ljava/lang/CharSequence;

.field i:J

.field j:J

.field k:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 1108
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 1108
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    .line 1124
    iget v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:I

    .line 1125
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:J

    .line 1126
    iget v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:F

    .line 1127
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->i:J

    .line 1128
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->d:J

    .line 1129
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->f:J

    .line 1130
    iget v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->f:I

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->g:I

    .line 1131
    iget-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->h:Ljava/lang/CharSequence;

    .line 1132
    iget-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1135
    :cond_0
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    .line 1136
    iget-object p1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->k:Landroid/os/Bundle;

    return-void
.end method

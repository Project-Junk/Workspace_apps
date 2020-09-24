.class public Landroidx/core/app/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field A:Ljava/lang/String;

.field B:Landroid/os/Bundle;

.field C:I

.field D:I

.field E:Landroid/app/Notification;

.field F:Landroid/widget/RemoteViews;

.field G:Landroid/widget/RemoteViews;

.field H:Landroid/widget/RemoteViews;

.field I:Ljava/lang/String;

.field J:I

.field K:Ljava/lang/String;

.field L:J

.field M:I

.field N:Landroid/app/Notification;

.field public O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/g$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/g$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;

.field f:Landroid/app/PendingIntent;

.field g:Landroid/app/PendingIntent;

.field h:Landroid/widget/RemoteViews;

.field i:Landroid/graphics/Bitmap;

.field j:Ljava/lang/CharSequence;

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Landroidx/core/app/g$c;

.field p:Ljava/lang/CharSequence;

.field q:[Ljava/lang/CharSequence;

.field r:I

.field s:I

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Ljava/lang/String;

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/g$b;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/g$b;->x:Z

    iput v0, p0, Landroidx/core/app/g$b;->C:I

    iput v0, p0, Landroidx/core/app/g$b;->D:I

    iput v0, p0, Landroidx/core/app/g$b;->J:I

    iput v0, p0, Landroidx/core/app/g$b;->M:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroidx/core/app/g$b;->N:Landroid/app/Notification;

    iput-object p1, p0, Landroidx/core/app/g$b;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/app/g$b;->I:Ljava/lang/String;

    iget-object p1, p0, Landroidx/core/app/g$b;->N:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    iget-object p1, p0, Landroidx/core/app/g$b;->N:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v0, p0, Landroidx/core/app/g$b;->l:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/g$b;->O:Ljava/util/ArrayList;

    return-void
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/core/app/g$b;->N:Landroid/app/Notification;

    iget p2, p0, Landroid/app/Notification;->flags:I

    or-int/2addr p1, p2

    :goto_0
    iput p1, p0, Landroid/app/Notification;->flags:I

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/core/app/g$b;->N:Landroid/app/Notification;

    iget p2, p0, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/g$b;->B:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$b;->B:Landroid/os/Bundle;

    :cond_0
    iget-object p0, p0, Landroidx/core/app/g$b;->B:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(I)Landroidx/core/app/g$b;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/g$b;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/core/app/g$b;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/g$b;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Landroidx/core/app/g$b;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/core/app/g$b;->B:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/core/app/g$b;->B:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/g$b;->B:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/g$b;
    .locals 0

    invoke-static {p1}, Landroidx/core/app/g$b;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g$b;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/g$b;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/g$b;->m:Z

    return-object p0
.end method

.method public b()Landroid/app/Notification;
    .locals 1

    new-instance v0, Landroidx/core/app/h;

    invoke-direct {v0, p0}, Landroidx/core/app/h;-><init>(Landroidx/core/app/g$b;)V

    invoke-virtual {v0}, Landroidx/core/app/h;->a()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Landroidx/core/app/g$b;
    .locals 0

    iput p1, p0, Landroidx/core/app/g$b;->l:I

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/g$b;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroidx/core/app/g$b;->a(IZ)V

    return-object p0
.end method

.class Landroidx/appcompat/app/f$g;
.super Landroidx/appcompat/app/f$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;

.field private final c:Landroidx/appcompat/app/k;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;Landroidx/appcompat/app/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/f$g;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f$f;-><init>(Landroidx/appcompat/app/f;)V

    iput-object p2, p0, Landroidx/appcompat/app/f$g;->c:Landroidx/appcompat/app/k;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/f$g;->c:Landroidx/appcompat/app/k;

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/f$g;->a:Landroidx/appcompat/app/f;

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->u()Z

    return-void
.end method

.method c()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

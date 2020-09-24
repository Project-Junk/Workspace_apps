.class public Lcom/color/support/widget/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/c$a;,
        Lcom/color/support/widget/c$b;,
        Lcom/color/support/widget/c$c;
    }
.end annotation


# instance fields
.field private a:Lcom/color/support/widget/c$c;

.field private b:Lcolor/support/v7/app/b;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/color/support/widget/c$b;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/c;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/c;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/c;->d:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/c;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/c;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/c;)Lcolor/support/v7/app/b;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/c;->b:Lcolor/support/v7/app/b;

    return-object p0
.end method

.method static synthetic a(Lcom/color/support/widget/c;Lcolor/support/v7/app/b;)Lcolor/support/v7/app/b;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/c;->b:Lcolor/support/v7/app/b;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/c;Lcom/color/support/widget/c$c;)Lcom/color/support/widget/c$c;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/c;->a:Lcom/color/support/widget/c$c;

    return-object p1
.end method

.method static synthetic b(Lcom/color/support/widget/c;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/c;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/color/support/widget/c;)Lcom/color/support/widget/c$c;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/c;->a:Lcom/color/support/widget/c$c;

    return-object p0
.end method

.method static synthetic c(Lcom/color/support/widget/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/c;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/color/support/widget/c;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/c;->d:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic e(Lcom/color/support/widget/c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/c;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/color/support/widget/c;)Lcom/color/support/widget/c$b;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/c;->g:Lcom/color/support/widget/c$b;

    return-object p0
.end method

.method static synthetic g(Lcom/color/support/widget/c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/c;->c:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/c;->b:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/c;->b:Lcolor/support/v7/app/b;

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->show()V

    :cond_0
    return-void
.end method

.class public Lcolor/support/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/a/a$b;,
        Lcolor/support/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcolor/support/v7/app/b$a;

.field private c:Lcolor/support/v7/app/b;

.field private d:Ljava/lang/CharSequence;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:[Ljava/lang/CharSequence;

.field private j:[I

.field private k:Landroid/widget/ListAdapter;

.field private l:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcolor/support/a/a;->a:Landroid/content/Context;

    new-instance v0, Lcolor/support/v7/app/b$a;

    invoke-direct {v0, p1, p2}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcolor/support/a/a;->b:Lcolor/support/v7/app/b$a;

    return-void
.end method

.method static synthetic a(Lcolor/support/a/a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcolor/support/a/a;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcolor/support/v7/a/a$g;->message_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcolor/support/a/a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcolor/support/a/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcolor/support/a/a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcolor/support/a/a;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/a/a;->h:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcolor/support/v7/a/a$g;->list_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcolor/support/a/a;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcolor/support/a/a$1;

    invoke-direct {v0, p0}, Lcolor/support/a/a$1;-><init>(Lcolor/support/a/a;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcolor/support/a/a;)Lcolor/support/v7/app/b;
    .locals 0

    iget-object p0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcolor/support/a/a;->g:Z

    if-eqz v0, :cond_1

    sget v0, Lcolor/support/v7/a/a$g;->custom_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcolor/support/a/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/a/a;->f:Landroid/view/View;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcolor/support/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget p0, p0, Lcolor/support/a/a;->e:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic c(Lcolor/support/a/a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcolor/support/a/a;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$g;->list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-direct {p0}, Lcolor/support/a/a;->e()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcolor/support/a/a;->l:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcolor/support/a/a$2;

    invoke-direct {v0, p0}, Lcolor/support/a/a$2;-><init>(Lcolor/support/a/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private d()Lcolor/support/v7/app/b;
    .locals 3

    iget-object v0, p0, Lcolor/support/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcolor/support/v7/a/a$j;->color_list_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcolor/support/a/a;->a(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcolor/support/a/a;->b(Landroid/view/View;)V

    iget-object v1, p0, Lcolor/support/a/a;->i:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcolor/support/a/a;->k:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcolor/support/a/a;->c(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcolor/support/a/a;->b:Lcolor/support/v7/app/b$a;

    invoke-virtual {v1, v0}, Lcolor/support/v7/app/b$a;->d(Landroid/view/View;)Lcolor/support/v7/app/b$a;

    iget-object p0, p0, Lcolor/support/a/a;->b:Lcolor/support/v7/app/b$a;

    invoke-virtual {p0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p0

    return-object p0
.end method

.method private e()Landroid/widget/ListAdapter;
    .locals 3

    iget-object v0, p0, Lcolor/support/a/a;->k:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcolor/support/a/a$a;

    iget-object v1, p0, Lcolor/support/a/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcolor/support/a/a;->i:[Ljava/lang/CharSequence;

    iget-object p0, p0, Lcolor/support/a/a;->j:[I

    invoke-direct {v0, v1, v2, p0}, Lcolor/support/a/a$a;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/a/a;->k:Landroid/widget/ListAdapter;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcolor/support/a/a;
    .locals 1

    iget-object v0, p0, Lcolor/support/a/a;->b:Lcolor/support/v7/app/b$a;

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/a/a;
    .locals 0

    iput-object p1, p0, Lcolor/support/a/a;->i:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcolor/support/a/a;->j:[I

    iput-object p3, p0, Lcolor/support/a/a;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/a/a;->d()Lcolor/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    :cond_0
    iget-object p0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->show()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)Lcolor/support/a/a;
    .locals 0

    iput-object p1, p0, Lcolor/support/a/a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b()Lcolor/support/v7/app/b;
    .locals 1

    iget-object v0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/a/a;->d()Lcolor/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    :cond_0
    iget-object p0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->cancel()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/a/a;->c:Lcolor/support/v7/app/b;

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->dismiss()V

    :cond_0
    return-void
.end method

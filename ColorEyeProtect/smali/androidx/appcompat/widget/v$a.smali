.class Landroidx/appcompat/widget/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/appcompat/widget/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/appcompat/app/c;

.field final synthetic b:Landroidx/appcompat/widget/v;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/v;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/v$a;->b:Landroidx/appcompat/widget/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/v$a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(II)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/v$a;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Landroidx/appcompat/widget/v$a;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {v1}, Landroidx/appcompat/widget/v;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroidx/appcompat/widget/v$a;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/v$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/v$a;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/v$a;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {v2}, Landroidx/appcompat/widget/v;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/appcompat/app/c$a;->a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->b()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/v$a;->a:Landroidx/appcompat/app/c;

    iget-object v0, p0, Landroidx/appcompat/widget/v$a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroidx/appcompat/app/c;->a()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/v$a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->show()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/v$a;->c:Landroid/widget/ListAdapter;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/v$a;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public a_()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v$a;->a:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v$a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroidx/appcompat/app/c;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/v$a;->a:Landroidx/appcompat/app/c;

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/v$a;->a:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v$a;->a:Landroidx/appcompat/app/c;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Landroidx/appcompat/widget/v$a;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/v;->setSelection(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/v$a;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/v$a;->b:Landroidx/appcompat/widget/v;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/v$a;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroidx/appcompat/widget/v;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/v$a;->c()V

    return-void
.end method

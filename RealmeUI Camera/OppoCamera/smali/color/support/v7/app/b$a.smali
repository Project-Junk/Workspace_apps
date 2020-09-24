.class public Lcolor/support/v7/app/b$a;
.super Landroidx/appcompat/app/b$a;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcolor/support/v7/app/a$a;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-static {p1, v0}, Lcolor/support/v7/app/b;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 343
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 344
    new-instance v0, Lcolor/support/v7/app/a$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 345
    invoke-static {p1, p2}, Lcolor/support/v7/app/b;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcolor/support/v7/app/a$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    .line 346
    iput p2, p0, Lcolor/support/v7/app/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 359
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v0, v0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public synthetic a(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/b$a;->b(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/b$a;->b(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/view/View;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/b$a;->c(Landroid/view/View;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/b$a;->b(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/b$a;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/b$a;->b([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/b$a;->b([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcolor/support/v7/app/b$a;
    .locals 2

    .line 368
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 2

    .line 474
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->i:Ljava/lang/CharSequence;

    .line 475
    iget-object p1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p2, p1, Lcolor/support/v7/app/a$a;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 601
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->s:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public a(Z)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 580
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-boolean p1, v0, Lcolor/support/v7/app/a$a;->r:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 644
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->v:[Ljava/lang/CharSequence;

    .line 645
    iput-object p2, v0, Lcolor/support/v7/app/a$a;->z:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public synthetic b(Landroid/view/View;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/b$a;->d(Landroid/view/View;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Landroidx/appcompat/app/b;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcolor/support/v7/app/b$a;
    .locals 2

    .line 409
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 2

    .line 510
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->l:Ljava/lang/CharSequence;

    .line 511
    iget-object p1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p2, p1, Lcolor/support/v7/app/a$a;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 621
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 446
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 868
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->y:Landroid/widget/ListAdapter;

    .line 869
    iput-object p3, v0, Lcolor/support/v7/app/a$a;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 870
    iput p2, v0, Lcolor/support/v7/app/a$a;->K:I

    const/4 p1, 0x1

    .line 871
    iput-boolean p1, v0, Lcolor/support/v7/app/a$a;->J:Z

    return-object p0
.end method

.method public b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 674
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->y:Landroid/widget/ListAdapter;

    .line 675
    iput-object p2, v0, Lcolor/support/v7/app/a$a;->z:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 846
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->v:[Ljava/lang/CharSequence;

    .line 847
    iput-object p3, v0, Lcolor/support/v7/app/a$a;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 848
    iput p2, v0, Lcolor/support/v7/app/a$a;->K:I

    const/4 p1, 0x1

    .line 849
    iput-boolean p1, v0, Lcolor/support/v7/app/a$a;->J:Z

    return-object p0
.end method

.method public b([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 745
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->v:[Ljava/lang/CharSequence;

    .line 746
    iput-object p3, v0, Lcolor/support/v7/app/a$a;->L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 747
    iput-object p2, v0, Lcolor/support/v7/app/a$a;->H:[Z

    const/4 p1, 0x1

    .line 748
    iput-boolean p1, v0, Lcolor/support/v7/app/a$a;->I:Z

    return-object p0
.end method

.method public c(I)Lcolor/support/v7/app/b$a;
    .locals 3

    .line 460
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 461
    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v1, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 462
    iget-object p1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcolor/support/v7/app/a$a;->c:I

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 2

    .line 546
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v0, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->o:Ljava/lang/CharSequence;

    .line 547
    iget-object p1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p2, p1, Lcolor/support/v7/app/a$a;->q:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Landroid/view/View;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 399
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->g:Landroid/view/View;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 378
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 487
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->i:Ljava/lang/CharSequence;

    .line 488
    iput-object p2, v0, Lcolor/support/v7/app/a$a;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c()Lcolor/support/v7/app/b;
    .locals 3

    .line 1006
    new-instance v0, Lcolor/support/v7/app/b;

    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v1, Lcolor/support/v7/app/a$a;->a:Landroid/content/Context;

    iget v2, p0, Lcolor/support/v7/app/b$a;->b:I

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/b;-><init>(Landroid/content/Context;I)V

    .line 1007
    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v2, v0, Lcolor/support/v7/app/b;->b:Lcolor/support/v7/app/a;

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/a$a;->a(Lcolor/support/v7/app/a;)V

    .line 1008
    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-boolean v1, v1, Lcolor/support/v7/app/a$a;->r:Z

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b;->setCancelable(Z)V

    .line 1009
    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-boolean v1, v1, Lcolor/support/v7/app/a$a;->r:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1010
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b;->setCanceledOnTouchOutside(Z)V

    .line 1012
    :cond_0
    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v1, Lcolor/support/v7/app/a$a;->s:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1013
    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v1, Lcolor/support/v7/app/a$a;->t:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1014
    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v1, Lcolor/support/v7/app/a$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1015
    iget-object v1, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iget-object v1, v1, Lcolor/support/v7/app/a$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public d(I)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 985
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput p1, v0, Lcolor/support/v7/app/a$a;->S:I

    return-object p0
.end method

.method public d(Landroid/view/View;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 917
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->B:Landroid/view/View;

    const/4 p1, 0x0

    .line 918
    iput p1, v0, Lcolor/support/v7/app/a$a;->A:I

    .line 919
    iput-boolean p1, v0, Lcolor/support/v7/app/a$a;->G:Z

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 419
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 523
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->l:Ljava/lang/CharSequence;

    .line 524
    iput-object p2, v0, Lcolor/support/v7/app/a$a;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d()Lcolor/support/v7/app/b;
    .locals 1

    .line 1031
    invoke-virtual {p0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Lcolor/support/v7/app/b;->show()V

    return-object v0
.end method

.method public e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;
    .locals 1

    .line 559
    iget-object v0, p0, Lcolor/support/v7/app/b$a;->a:Lcolor/support/v7/app/a$a;

    iput-object p1, v0, Lcolor/support/v7/app/a$a;->o:Ljava/lang/CharSequence;

    .line 560
    iput-object p2, v0, Lcolor/support/v7/app/a$a;->q:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

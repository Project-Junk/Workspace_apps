.class final Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;
.super Landroid/widget/ArrayAdapter;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settingslib/wifi/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field private final b:I

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;->a:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    const p1, 0x7f0d024d

    .line 361
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 362
    iput p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;->b:I

    .line 363
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 369
    iget-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;->c:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;->b:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0747

    .line 371
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 373
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/a;

    const p3, 0x1020016

    .line 378
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 381
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 382
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p3, 0x1020010

    .line 385
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    .line 2187
    invoke-virtual {p1, v1}, Lcom/android/settingslib/wifi/a;->b(Z)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const p3, 0x1020006

    .line 396
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/preference/internal/PreferenceImageView;

    .line 397
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->c()I

    move-result v0

    .line 2990
    iget v2, p1, Lcom/android/settingslib/wifi/a;->h:I

    .line 2994
    iget-boolean v3, p1, Lcom/android/settingslib/wifi/a;->i:Z

    if-eqz v3, :cond_4

    .line 2998
    iget-boolean p1, p1, Lcom/android/settingslib/wifi/a;->j:Z

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz p3, :cond_5

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 403
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/l;->a(IIZ)I

    move-result v0

    .line 402
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010429

    invoke-static {v0, v1}, Lcom/android/settingslib/l;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 404
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 406
    invoke-virtual {p3, p1}, Landroidx/preference/internal/PreferenceImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-object p2
.end method

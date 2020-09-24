.class final Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;
.super Lcom/coloros/settings/feature/language/localepicker/b;
.source "LanguagePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;

    .line 482
    invoke-direct {p0, p2, p3}, Lcom/coloros/settings/feature/language/localepicker/b;-><init>(Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 487
    invoke-super {p0}, Lcom/coloros/settings/feature/language/localepicker/b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1492
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/sdk/LocalePicker$a;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 497
    invoke-super {p0}, Lcom/coloros/settings/feature/language/localepicker/b;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/b;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-super {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/b;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d01a1

    .line 504
    iget-object p3, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;

    .line 505
    invoke-virtual {p3}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object p3

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020018

    .line 506
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_0

    const v0, 0x7f0d00c3

    .line 508
    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 509
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;

    const v0, 0x7f0a017e

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    const p1, 0x7f0a017f

    .line 510
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0180

    .line 511
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0176

    .line 512
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 514
    invoke-static {p1}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 515
    iget-object p3, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;

    invoke-virtual {p3}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f080410

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 517
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;)V

    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 524
    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 525
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/language/localepicker/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 527
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/language/localepicker/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

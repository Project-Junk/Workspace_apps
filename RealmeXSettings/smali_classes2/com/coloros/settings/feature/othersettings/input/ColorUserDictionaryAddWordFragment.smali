.class public Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;
.super Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;
.source "ColorUserDictionaryAddWordFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x7f12074e

    .line 62
    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f080478

    .line 63
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 65
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d0104

    const/4 p3, 0x0

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->b:Landroid/view/View;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->c:Z

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Lcom/android/settings/inputmethod/c;

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/settings/inputmethod/c;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Lcom/android/settings/inputmethod/c;

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->b:Landroid/view/View;

    iget-object p3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/inputmethod/c;-><init>(Landroid/view/View;Lcom/android/settings/inputmethod/c;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->b:Landroid/view/View;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->b:Landroid/view/View;

    const p3, 0x7f0a076b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 57
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;->b:Landroid/view/View;

    return-object p1
.end method

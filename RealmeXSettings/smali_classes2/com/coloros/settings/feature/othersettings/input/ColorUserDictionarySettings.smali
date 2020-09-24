.class public Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;
.super Lcom/android/settings/inputmethod/UserDictionarySettings;
.source "ColorUserDictionarySettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/EmptyListView;

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120e80

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0808cc

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/coloros/settings/widget/EmptyListView;->a(ILjava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d00b7

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p2, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f121822

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    :cond_0
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method

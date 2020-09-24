.class public Lcom/color/support/preference/e;
.super Landroidx/preference/g;


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    sget p3, Lcolor/support/v7/a/a$j;->color_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/color/support/preference/e;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/preference/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/color/support/preference/e;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/color/support/preference/e;->setDividerHeight(I)V

    return-object p1
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    invoke-virtual {p0}, Lcom/color/support/preference/e;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/i;->a(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/color/support/preference/ColorActivityDialogPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/a;->b(Ljava/lang/String;)Lcom/color/support/preference/a;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/b;->b(Ljava/lang/String;)Lcom/color/support/preference/b;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/color/support/preference/ColorMultiSelectListPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/d;->b(Ljava/lang/String;)Lcom/color/support/preference/d;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/c;->b(Ljava/lang/String;)Lcom/color/support/preference/c;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/c;->setTargetFragment(Landroidx/fragment/app/d;I)V

    invoke-virtual {p0}, Lcom/color/support/preference/e;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object p0

    const-string v0, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/i;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-super {p0, p1}, Landroidx/preference/g;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void
.end method

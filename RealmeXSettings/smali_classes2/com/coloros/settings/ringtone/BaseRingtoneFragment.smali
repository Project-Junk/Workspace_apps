.class public abstract Lcom/coloros/settings/ringtone/BaseRingtoneFragment;
.super Lcom/color/support/preference/ColorPreferenceFragment;
.source "BaseRingtoneFragment.java"


# instance fields
.field private a:Lcolor/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/color/support/preference/ColorPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a070a

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->a:Lcolor/support/v7/widget/Toolbar;

    .line 36
    iget-object p2, p0, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->a:Lcolor/support/v7/widget/Toolbar;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const p3, 0x7f0803f7

    .line 39
    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 40
    iget-object p2, p0, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->a:Lcolor/support/v7/widget/Toolbar;

    new-instance p3, Lcom/coloros/settings/ringtone/BaseRingtoneFragment$1;

    invoke-direct {p3, p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment$1;-><init>(Lcom/coloros/settings/ringtone/BaseRingtoneFragment;)V

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 47
    iget-object p2, p0, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->a:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p2, p0, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->a:Lcolor/support/v7/widget/Toolbar;

    const p3, 0x7f12000f

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    return-object p1
.end method

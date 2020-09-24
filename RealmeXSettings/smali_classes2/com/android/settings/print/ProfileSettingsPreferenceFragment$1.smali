.class final Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ProfileSettingsPreferenceFragment.java"

# interfaces
.implements Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/dashboard/profileselector/a;

.field final synthetic b:Lcolor/support/v7/internal/widget/ColorSpinner;

.field final synthetic c:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/ProfileSettingsPreferenceFragment;Lcom/android/settings/dashboard/profileselector/a;Lcolor/support/v7/internal/widget/ColorSpinner;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->c:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->a:Lcom/android/settings/dashboard/profileselector/a;

    iput-object p3, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->b:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcolor/support/v7/internal/widget/AdapterViewCompat;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcolor/support/v7/internal/widget/AdapterViewCompat<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 52
    iget-object p1, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->a:Lcom/android/settings/dashboard/profileselector/a;

    if-ltz p3, :cond_1

    .line 1092
    iget-object p2, p1, Lcom/android/settings/dashboard/profileselector/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    goto :goto_0

    .line 1095
    :cond_0
    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/profileselector/a$a;

    .line 2048
    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/a$a;->a:Landroid/os/UserHandle;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-eq p2, p3, :cond_2

    .line 54
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->c:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    invoke-virtual {p3}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x10000000

    .line 55
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p3, 0x8000

    .line 56
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    iget-object p3, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->c:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    invoke-virtual {p3}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->b:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcolor/support/v7/internal/widget/ColorSpinner;->setSelection(I)V

    :cond_2
    return-void
.end method

.class public Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 239
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4097
    invoke-static {v0, p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object p1
.end method

.method protected final a(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 231
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/SetupEncryptionInterstitial;->b(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 3097
    invoke-static {p2, p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object p1
.end method

.method protected final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;",
            ">;"
        }
    .end annotation

    .line 163
    const-class v0, Lcom/android/settings/password/SetupChooseLockGeneric$InternalActivity;

    return-object v0
.end method

.method protected final c()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0d02d9

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    return-void

    :cond_1
    :goto_0
    const v0, 0x7f0d02d8

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    return-void
.end method

.method protected final d()Landroid/content/Intent;
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->d()Landroid/content/Intent;

    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Lcom/android/settings/password/SetupChooseLockPattern;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2097
    invoke-static {v1, v0}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p3, :cond_0

    .line 138
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 142
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const-string v1, ":settings:password_quality"

    .line 143
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 152
    check-cast p2, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 153
    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->c()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 195
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unlock_set_do_later"

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ":settings:frp_supported"

    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 198
    invoke-static {p1, v0, v0, v0, v0}, Lcom/android/settings/password/SetupSkipDialog;->a(ZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "skip_dialog"

    .line 1115
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 209
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    check-cast p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 108
    new-instance p2, Lcom/android/settings/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->setDividerItemDecoration(Lcom/google/android/setupdesign/DividerItemDecoration;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070663

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->setDividerInset(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080734

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-boolean p2, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->a:Z

    if-eqz p2, :cond_0

    const p2, 0x7f120c72

    goto :goto_0

    :cond_0
    const p2, 0x7f121465

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 120
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->setHeaderText(I)V

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

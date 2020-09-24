.class public Lcom/android/settings/notification/NotificationLockscreenPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "NotificationLockscreenPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationLockscreenPreference$a;
    }
.end annotation


# instance fields
.field private j:Z

.field private k:Lcom/android/settings/notification/NotificationLockscreenPreference$a;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Lcom/android/settingslib/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->m:Z

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->n:I

    return-void
.end method

.method private a(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 134
    iget-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->m:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x8

    return p1
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->a(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationLockscreenPreference;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/notification/NotificationLockscreenPreference;)Lcom/android/settingslib/g$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->o:Lcom/android/settingslib/g$a;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Dialog;)V
    .locals 4

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->a(Landroid/app/Dialog;)V

    .line 92
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    const v0, 0x7f0a03c1

    .line 93
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 94
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->j:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->k:Lcom/android/settings/notification/NotificationLockscreenPreference$a;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->o:Lcom/android/settingslib/g$a;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const v1, 0x7f0a056d

    .line 98
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->o:Lcom/android/settingslib/g$a;

    if-nez v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->o:Lcom/android/settingslib/g$a;

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    const-string v0, "com.android.internal.R.id.customPanel"

    .line 103
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->k:Lcom/android/settings/notification/NotificationLockscreenPreference$a;

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 111
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    .line 112
    invoke-virtual {p2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p2

    const-string v0, "com.android.internal.R.id.customPanel"

    .line 114
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 115
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->l:Z

    invoke-direct {p0, p2, v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->a(IZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->k:Lcom/android/settings/notification/NotificationLockscreenPreference$a;

    .line 1165
    iput-object p1, p2, Lcom/android/settings/notification/NotificationLockscreenPreference$a;->a:Landroid/view/View;

    return-void
.end method

.method public final a(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 80
    new-instance v0, Lcom/android/settings/notification/NotificationLockscreenPreference$a;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference$a;-><init>(Lcom/android/settings/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->k:Lcom/android/settings/notification/NotificationLockscreenPreference$a;

    .line 81
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->a(Landroid/content/Context;)Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->c()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->k:Lcom/android/settings/notification/NotificationLockscreenPreference$a;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p2

    array-length p2, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->l:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "lock_screen_allow_remote_input"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->j:Z

    const p2, 0x7f0d01b0

    .line 86
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->a(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->j:Z

    const-string v1, "lock_screen_allow_remote_input"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->n:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0}, Lcom/android/settings/RestrictedListPreference;->onClick()V

    :cond_0
    return-void
.end method

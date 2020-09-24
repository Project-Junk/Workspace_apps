.class public Lcom/android/settings/notification/LockScreenNotificationPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "LockScreenNotificationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/android/settings/RestrictedListPreference;

.field private e:Lcom/android/settings/RestrictedListPreference;

.field private final f:I

.field private final g:Z

.field private final h:Z

.field private i:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->b:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->c:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    .line 84
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object p2

    .line 86
    invoke-interface {p2, p1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->g:Z

    .line 88
    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    const/16 p3, -0x2710

    if-eq p2, p3, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->h:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .line 2332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 285
    :goto_0
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v3

    .line 286
    invoke-virtual {v3}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v3

    .line 287
    invoke-interface {v3, p0}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 288
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-nez v0, :cond_3

    const p0, 0x7f120c5e

    return p0

    :cond_3
    if-eqz v1, :cond_4

    const p0, 0x7f120c61

    return p0

    :cond_4
    const p0, 0x7f120c5f

    return p0
.end method

.method private a()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->j:I

    .line 301
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a()V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 263
    invoke-static {v0, p3, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Lcom/android/settings/RestrictedListPreference$b;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/RestrictedListPreference$b;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/g$a;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->a(Lcom/android/settings/RestrictedListPreference$b;)V

    .line 270
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    .line 272
    invoke-static {v0, p3, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    if-eqz v0, :cond_1

    .line 275
    new-instance v0, Lcom/android/settings/RestrictedListPreference$b;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/RestrictedListPreference$b;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/g$a;)V

    .line 278
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->a(Lcom/android/settings/RestrictedListPreference$b;)V

    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Landroid/content/Context;I)Z
    .locals 2

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lock_screen_allow_private_notifications"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    return p0
.end method

.method private b()V
    .locals 3

    .line 316
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    if-nez v1, :cond_1

    return-void

    .line 322
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    .line 323
    invoke-static {v0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    const-string v2, "%s"

    invoke-virtual {v1, v2}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    const v0, 0x7f120c62

    goto :goto_1

    :cond_4
    const v0, 0x7f120c60

    .line 325
    :goto_1
    iput v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->k:I

    .line 328
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->b()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 9

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    const-string v1, "Preference not found: "

    const-string v2, "LockScreenNotifPref"

    if-nez v0, :cond_0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v3, 0x7f0d00c3

    .line 101
    invoke-virtual {v0, v3}, Lcom/android/settings/RestrictedListPreference;->setWidgetLayoutResource(I)V

    .line 103
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    const/16 v3, -0x2710

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    .line 105
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    .line 1121
    iput-boolean v4, p1, Lcom/android/settings/RestrictedListPreference;->c:Z

    .line 106
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    .line 1125
    iput v0, p1, Lcom/android/settings/RestrictedListPreference;->d:I

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 111
    :goto_0
    new-instance p1, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;-><init>(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->i:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;

    .line 2117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2120
    iget-object v3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120c61

    .line 2121
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2123
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2124
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2125
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0xc

    .line 2126
    invoke-direct {p0, v3, v6, v7}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 2129
    iget-boolean v3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->g:Z

    const/4 v6, 0x4

    if-eqz v3, :cond_2

    .line 2130
    iget-object v3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f120c5f

    .line 2131
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2133
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 2134
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2136
    invoke-direct {p0, v3, v8, v6}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 2140
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f120c5e

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2141
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2144
    iget-object v3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2145
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2146
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a()V

    .line 2148
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    if-le p1, v4, :cond_3

    .line 2149
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/RestrictedListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 2152
    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->d:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1, v5}, Lcom/android/settings/RestrictedListPreference;->setEnabled(Z)V

    .line 2157
    :goto_1
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    if-nez p1, :cond_4

    .line 2158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2161
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120c62

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2166
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2168
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    invoke-direct {p0, v1, v2, v7}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 2173
    iget-boolean v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->h:Z

    if-eqz v1, :cond_5

    .line 2174
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120c60

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2176
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2178
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2179
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 2184
    :cond_5
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2185
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2186
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->b()V

    .line 2187
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    if-le p1, v4, :cond_6

    .line 2188
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/RestrictedListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .line 2191
    :cond_6
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->e:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1, v5}, Lcom/android/settings/RestrictedListPreference;->setEnabled(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->i:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 221
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 223
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 224
    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->k:I

    if-ne p1, p2, :cond_0

    return v4

    :cond_0
    const p2, 0x7f120c62

    if-ne p1, p2, :cond_1

    move v4, v3

    .line 228
    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->f:I

    invoke-static {p2, v2, v4, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 231
    iput p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->k:I

    return v3

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    instance-of v0, p1, Lcom/android/settings/RestrictedListPreference;

    if-eqz v0, :cond_3

    .line 235
    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    .line 236
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->a(Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 238
    iget-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/RestrictedListPreference$b;->c:Lcom/android/settingslib/g$a;

    invoke-static {p2, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return v4

    .line 244
    :cond_3
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 245
    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->j:I

    if-ne p1, p2, :cond_4

    return v4

    :cond_4
    const p2, 0x7f120c5e

    if-eq p1, p2, :cond_5

    move p2, v3

    goto :goto_0

    :cond_5
    move p2, v4

    :goto_0
    const v0, 0x7f120c61

    if-ne p1, v0, :cond_6

    move v4, v3

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iput p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->j:I

    return v3

    :cond_7
    return v4
.end method

.method public onResume()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->i:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

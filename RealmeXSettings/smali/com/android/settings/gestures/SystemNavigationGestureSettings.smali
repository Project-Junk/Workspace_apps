.class public Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "SystemNavigationGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final a:[Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/om/IOverlayManager;

.field private d:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.android.internal.systemui.navbar.gestural_narrow_back"

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    const-string v2, "com.android.internal.systemui.navbar.gestural_wide_back"

    const-string v3, "com.android.internal.systemui.navbar.gestural_extra_wide_back"

    .line 93
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 100
    sput v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->b:I

    .line 376
    new-instance v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 256
    :goto_0
    sget-object v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    const/4 v3, 0x0

    .line 259
    :try_start_0
    aget-object v2, v2, v1

    const/4 v4, -0x2

    invoke-interface {p1, v2, v4}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "system_navigation_settings_preferences"

    .line 266
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sget p1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->b:I

    const-string/jumbo v0, "system_navigation_back_sensitivity"

    .line 267
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 272
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isEdgeToEdgeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "system_nav_gestural"

    return-object p0

    .line 274
    :cond_0
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isSwipeUpEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "system_nav_2buttons"

    return-object p0

    :cond_1
    const-string/jumbo p0, "system_nav_3buttons"

    return-object p0
.end method

.method static a(Landroid/content/Context;Landroid/content/om/IOverlayManager;I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-ltz p2, :cond_1

    .line 242
    sget-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v1, "system_navigation_settings_preferences"

    .line 247
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "system_navigation_back_sensitivity"

    .line 248
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "system_nav_gestural"

    if-ne p0, v0, :cond_0

    .line 250
    sget-object p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-static {p1, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 243
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sensitivity out of range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x2

    .line 301
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->a(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    return-void
.end method

.method private static a(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/widget/VideoPreference;->a(II)V

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6ee22145

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x51fa588d

    if-eq v1, v2, :cond_1

    const v0, -0x700f466

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "system_nav_3buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "system_nav_gestural"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "system_nav_2buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x7f110033

    const v0, 0x7f080a11

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->a(II)V

    :goto_2
    return-void

    :cond_5
    const p1, 0x7f110032

    const v0, 0x7f080a10

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->a(II)V

    return-void

    :cond_6
    const p1, 0x7f110034

    const v0, 0x7f080a12

    .line 311
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->a(II)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->c:Landroid/content/om/IOverlayManager;

    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->a(Lcom/android/settings/gestures/SystemNavigationGestureSettings;I)V

    return-void
.end method

.method public static synthetic lambda$J7S7EsJPr7jNVdMzX5pNG_VjTTg(Lcom/android/settings/gestures/SystemNavigationGestureSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$m6Mpl_MGMF1GeFwccvhE7HyoOS0(Lcom/android/settings/gestures/SystemNavigationGestureSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.android.internal.systemui.navbar.gestural"

    .line 189
    invoke-static {v0, v2}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    new-instance v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;

    const v3, 0x7f12089a

    .line 192
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f120899

    .line 193
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "system_nav_gestural"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 191
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "com.android.internal.systemui.navbar.twobutton"

    .line 196
    invoke-static {v0, v2}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    new-instance v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;

    const v3, 0x7f121639

    .line 199
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f121638

    .line 200
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "system_nav_2buttons"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 198
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "com.android.internal.systemui.navbar.threebutton"

    .line 203
    invoke-static {v0, v2}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    new-instance v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;

    const v3, 0x7f120bf3

    .line 206
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f120bf2

    .line 207
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v4, "system_nav_3buttons"

    invoke-direct {v2, v3, v0, v4}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 205
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public final a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;)V
    .locals 1

    .line 154
    instance-of p2, p3, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;

    if-eqz p2, :cond_3

    instance-of p2, p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    if-nez p2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    move-object p2, p3

    check-cast p2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;

    .line 2362
    iget-object p2, p2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;->a:Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    check-cast p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    .line 162
    invoke-virtual {p3}, Lcom/android/settingslib/widget/g;->c()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string/jumbo v0, "system_nav_gestural"

    if-ne p2, v0, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 163
    invoke-static {p2}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 165
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->a(I)V

    .line 166
    new-instance p2, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$m6Mpl_MGMF1GeFwccvhE7HyoOS0;

    invoke-direct {p2, p0}, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$m6Mpl_MGMF1GeFwccvhE7HyoOS0;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->a(Landroid/view/View$OnClickListener;)V

    return-void

    .line 169
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setEnabled(Z)V

    const/4 p2, 0x1

    .line 170
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->a(I)V

    .line 171
    new-instance p2, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$J7S7EsJPr7jNVdMzX5pNG_VjTTg;

    invoke-direct {p2, p0}, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$J7S7EsJPr7jNVdMzX5pNG_VjTTg;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->a(Landroid/view/View$OnClickListener;)V

    return-void

    .line 175
    :cond_2
    invoke-virtual {p1, p3}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->a(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 9

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "system_nav_gestural"

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 223
    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->c:Landroid/content/om/IOverlayManager;

    .line 3284
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x6ee22145

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v4, v5, :cond_3

    const v5, -0x51fa588d

    if-eq v4, v5, :cond_2

    const v5, -0x700f466

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "system_nav_3buttons"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "system_nav_2buttons"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v8

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v7

    :goto_1
    if-eqz v4, :cond_7

    if-eq v4, v8, :cond_6

    if-eq v4, v6, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    .line 3293
    invoke-static {v3, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v0, "com.android.internal.systemui.navbar.twobutton"

    .line 3290
    invoke-static {v3, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto :goto_2

    .line 3286
    :cond_7
    invoke-static {v0, v3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I

    move-result v0

    .line 3287
    sget-object v4, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a:[Ljava/lang/String;

    aget-object v0, v4, v0

    invoke-static {v3, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    .line 229
    :goto_2
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->d:Lcom/android/settings/widget/VideoPreference;

    invoke-static {v0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    .line 230
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3324
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 3326
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p1

    .line 3329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3330
    iget v0, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    move p1, v8

    goto :goto_3

    :cond_9
    move p1, v2

    :goto_3
    if-nez p1, :cond_b

    .line 3339
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_display_magnification_navbar_enabled"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_a

    move v2, v8

    :cond_a
    if-eqz v2, :cond_c

    .line 232
    :cond_b
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/i;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->startActivity(Landroid/content/Intent;)V

    :cond_c
    return v8
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55e

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150123

    return v0
.end method

.method public final j_()V
    .locals 6

    .line 2216
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 135
    iget-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->d:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/widget/g;

    .line 142
    new-instance v4, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v3}, Lcom/android/settingslib/widget/g;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 145
    invoke-virtual {v3}, Lcom/android/settingslib/widget/g;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;)V

    .line 146
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->g()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 109
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/a;

    move-result-object v0

    .line 111
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "pref_system_navigation_suggestion_complete"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "overlay"

    .line 115
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->c:Landroid/content/om/IOverlayManager;

    .line 117
    new-instance v0, Lcom/android/settings/widget/VideoPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/VideoPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->d:Lcom/android/settings/widget/VideoPreference;

    .line 118
    iget-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->d:Lcom/android/settings/widget/VideoPreference;

    .line 1216
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->a(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->d:Lcom/android/settings/widget/VideoPreference;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07071b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    .line 1262
    iget-object v2, p1, Lcom/android/settings/widget/VideoPreference;->a:Landroid/content/Context;

    .line 1263
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1262
    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/android/settings/widget/VideoPreference;->f:I

    return-void
.end method

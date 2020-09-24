.class public final Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;
.super Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;
.source "ColorFingerprintSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/support/actionbar/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;
    }
.end annotation


# static fields
.field private static final ADD_A_NEW_FINGER_PRINT_SET_PASSWORD:I = 0x11

.field protected static final DEBUG:Z = true

.field private static final HIDE_APP_SHORTCUT_FINGER:Ljava/lang/String; = "hide_app_shortcut_finger"

.field private static final KEY_FINGERPRINT_ADD:Ljava/lang/String; = "key_fingerprint_add"

.field private static final KEY_FINGERPRINT_CATEGORY:Ljava/lang/String; = "fingerprint_category"

.field private static final KEY_FINGERPRINT_CHECK_DETAILS:Ljava/lang/String; = "fingerprint_check_details"

.field private static final KEY_FINGERPRINT_EDIT:Ljava/lang/String; = "fingerprint_edit"

.field private static final KEY_FINGERPRINT_ITEM_PREFIX:Ljava/lang/String; = "key_fingerprint_item"

.field private static final KEY_FINGERPRINT_USAGE:Ljava/lang/String; = "fingerprint_usage"

.field private static final MIN_HIDE_APP_COUNT:I = 0x1

.field private static final MSG_ASYNC_DELETE_ALL:I = 0x3f3

.field private static final MSG_ASYNC_INIT_FINGERPRINTS:I = 0x3f2

.field private static final MSG_ASYNC_INIT_VALUES:I = 0x3f4

.field private static final MSG_ASYNC_START_ACTIVITY:I = 0x3f5

.field private static final MSG_FINGER_AUTH_ERROR:I = 0x3eb

.field private static final MSG_FINGER_AUTH_FAIL:I = 0x3ea

.field private static final MSG_FINGER_AUTH_HELP:I = 0x3ec

.field private static final MSG_FINGER_AUTH_SUCCESS:I = 0x3e9

.field private static final MSG_REFRESH_FINGERPRINT_TEMPLATES:I = 0x3e8

.field private static final MSG_REFRESH_FINGERPRINT_UI:I = 0x3ed

.field private static final REFERSH_DALAY_MS:I = 0xc8

.field private static final REQUEST_CODE_ENROLL_FACE:I = 0x110

.field private static final RESET_HIGHLIGHT_DELAY_MS:I = 0x1f4

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final START_ACTIVITY_DELAY_MS:I = 0xc8

.field private static final START_ENROLL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FingerprintSettingsFragment"

.field private static final UPDATE_DELAY:I = 0x12c

.field private static final VALUE_HIDE_APP_SHORT_CUT_NONE:Ljava/lang/String; = "0"


# instance fields
.field private mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelErrorDlgShown:Z

.field private mDeleteErrorDialog:Lcolor/support/v7/app/AlertDialog;

.field private mFingerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private mFingerprintCategory:Landroidx/preference/PreferenceCategory;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintUsagePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private mFingersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mInitFingerListener:Lcom/coloros/settings/feature/fingerprint/utils/InitListener;

.field private mIsFingerprintUnlockNeedDismiss:Z

.field private mIsSecure:Z

.field private mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mOnUpdateListener:Lcom/coloros/settings/feature/c/a$a;

.field private mOpticalFingerprintCategory:Landroidx/preference/PreferenceCategory;

.field private mOpticalFingerprintCategoryLine:Landroidx/preference/PreferenceCategory;

.field private mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mSearchAsyncHighlightManager:Lcom/coloros/settings/feature/c/a;

.field private mSetupFinger:Z

.field private mSideFingerprintCategory:Landroidx/preference/PreferenceCategory;

.field private mSideFingerprintCategoryLine:Landroidx/preference/PreferenceCategory;

.field private mUIHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1293
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$13;

    invoke-direct {v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$13;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;-><init>()V

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsFingerprintUnlockNeedDismiss:Z

    .line 228
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDelErrorDlgShown:Z

    .line 239
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSetupFinger:Z

    .line 241
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 1285
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$12;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$12;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 1377
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$14;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$14;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;J)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->refreshFingerprints(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUIHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->isFingerprintListEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Ljava/util/List;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->refreshFingerSwitchPre()V

    return-void
.end method

.method static synthetic access$1300(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->refreshFingerprintUsagePreference()V

    return-void
.end method

.method static synthetic access$1400(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->refreshFingerprintHidePreference()V

    return-void
.end method

.method static synthetic access$1500(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Lcom/coloros/settings/feature/c/a$a;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOnUpdateListener:Lcom/coloros/settings/feature/c/a$a;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->startFaceSettings()V

    return-void
.end method

.method static synthetic access$1702(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$1900(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Ljava/util/Map;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingersMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Ljava/util/List;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->showErrorDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$502(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDelErrorDlgShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/os/Message;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$702(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsSecure:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->onClickAddFinger()V

    return-void
.end method

.method static synthetic access$900(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Lcom/coloros/settings/feature/c/a;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSearchAsyncHighlightManager:Lcom/coloros/settings/feature/c/a;

    return-object p0
.end method

.method private addFingerPrintPreferenceCategory(ILjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;)V
    .locals 1

    .line 623
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 624
    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    .line 625
    invoke-virtual {v0, p3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Landroidx/preference/PreferenceCategory;

    if-lez p1, :cond_1

    if-nez p2, :cond_3

    if-eqz p4, :cond_0

    .line 629
    invoke-virtual {v0, p4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    if-eqz p5, :cond_3

    .line 632
    invoke-virtual {v0, p5}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 637
    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    if-eqz p3, :cond_3

    .line 640
    invoke-virtual {v0, p3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method private addFingerprintItemPreferences(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)V"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 576
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    move v7, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 578
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 579
    new-instance v4, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v8, 0x7f120f4d

    invoke-virtual {v6, v8}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const v5, 0x7f0d006b

    .line 580
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setLayoutResource(I)V

    .line 581
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {v4, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setPersistent(Z)V

    add-int/lit8 v7, v7, 0x1

    .line 583
    invoke-virtual {v4, v7}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setOrder(I)V

    .line 584
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 585
    new-instance v5, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$B1CqG7lrbgmR_qE5n0qIHIPha18;

    invoke-direct {v5, p0, v3}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$B1CqG7lrbgmR_qE5n0qIHIPha18;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 2036
    iput-object v5, v4, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->b:Landroid/view/View$OnClickListener;

    .line 586
    new-instance v5, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$URWnkgaO3IJW9oXPyeKCUQLGVZc;

    invoke-direct {v5, p0, v3}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$URWnkgaO3IJW9oXPyeKCUQLGVZc;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 2121
    iput-object v5, v4, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->a:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    .line 587
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    invoke-virtual {v4, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalFingerprintCategory:Landroidx/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalFingerprintCategoryLine:Landroidx/preference/PreferenceCategory;

    const-string v3, "optical_fingerprint_category"

    const-string v4, "optical_fingerprint_category_line"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->addFingerPrintPreferenceCategory(ILjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;)V

    goto :goto_1

    .line 595
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 596
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSideFingerprintCategory:Landroidx/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSideFingerprintCategoryLine:Landroidx/preference/PreferenceCategory;

    const-string v3, "side_fingerprint_category"

    const-string v4, "side_fingerprint_category_line"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->addFingerPrintPreferenceCategory(ILjava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;)V

    goto :goto_1

    :cond_3
    move v7, v0

    .line 600
    :cond_4
    :goto_1
    new-instance v1, Lcom/coloros/settings/widget/preference/ColorFocusPreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v1, v2}, Lcom/coloros/settings/widget/preference/ColorFocusPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1208f5

    .line 601
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v2, "key_fingerprint_add"

    .line 602
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v2, 0x1

    add-int/2addr v7, v2

    .line 603
    invoke-virtual {v1, v7}, Landroidx/preference/Preference;->setOrder(I)V

    .line 605
    new-instance v3, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 613
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    if-eqz p1, :cond_5

    .line 615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x5

    if-lt p1, v3, :cond_5

    move v0, v2

    :cond_5
    xor-int/lit8 p1, v0, 0x1

    .line 617
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 955
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDeleteErrorDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDeleteErrorDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 1

    .line 978
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_fingerprint_item_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHideAppSummary(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1458
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120e03

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1460
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "hide_app_shortcut_finger"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1461
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingersMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 1464
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1207e3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1255
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f080963

    .line 1258
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintSettingsFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 421
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->initChallage(Z)V

    .line 422
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    iget v8, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    iget-wide v9, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    iget-boolean v11, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSupportFace:Z

    iget-wide v12, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFaceChallenge:J

    invoke-static/range {v5 .. v13}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setPasswordForResult(Landroid/app/Activity;IZIJZJ)V

    goto/16 :goto_1

    .line 413
    :pswitch_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->hasInitPreferences(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 415
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->initSettingsValues(Landroid/content/Context;)V

    .line 416
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->initStatisticsValues(Landroid/content/Context;)V

    return-void

    .line 402
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 404
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllFingerprints(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 405
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const-string p1, "mActivity is null"

    .line 408
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 398
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_1

    move v2, v4

    :cond_1
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->initFingprintData(Z)V

    return-void

    .line 382
    :pswitch_5
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mInitFingerListener:Lcom/coloros/settings/feature/fingerprint/utils/InitListener;

    if-eqz v0, :cond_3

    .line 384
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 385
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 387
    :try_start_0
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object p1, v3

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mInitFingerListener:Lcom/coloros/settings/feature/fingerprint/utils/InitListener;

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/InitListener;->onInit(Ljava/util/List;)V

    :pswitch_6
    return-void

    .line 375
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->handleError(ILjava/lang/CharSequence;)V

    :pswitch_8
    return-void

    .line 367
    :pswitch_9
    iput-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 368
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    .line 369
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void

    .line 362
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->removeFingerprintPreference(I)V

    .line 363
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 364
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private highlightFingerprintItem(I)V
    .locals 4

    .line 1265
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 1266
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;

    .line 1267
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object p1

    .line 1270
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1271
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 1272
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1273
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 1274
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 1275
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1276
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUIHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    new-instance v1, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$11;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private initFingerprint()V
    .locals 6

    .line 1019
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "fingerprint_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "fingerprint_usage"

    .line 1020
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintUsagePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1021
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintUsagePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 1023
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/as;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v2}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d007f

    .line 1025
    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setLayoutResource(I)V

    const-string v2, "fingerprint_check_details"

    .line 1026
    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setKey(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setPersistent(Z)V

    .line 1029
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v2, 0x7f1204e1

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v5, 0x7f120511

    invoke-virtual {v4, v5}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1032
    new-instance v3, Lcom/color/support/widget/ColorClickableSpan;

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v3, v4}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 1033
    new-instance v4, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$6;

    invoke-direct {v4, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$6;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v3, v4}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    .line 1046
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v4, v1

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1047
    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1048
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1051
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$7;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mInitFingerListener:Lcom/coloros/settings/feature/fingerprint/utils/InitListener;

    .line 1082
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.action.CLOSE_FINGERPRINT_UNLOCK"

    .line 1083
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "com.android.settings.fingerprint.permission.DELETE_FINGERPRINT"

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "fingerprint"

    .line 1086
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1087
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1088
    invoke-static {v0}, Lcom/coloros/settings/custom/b;->k(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsFingerprintUnlockNeedDismiss:Z

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsFingerprintUnlockNeedDismiss = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsFingerprintUnlockNeedDismiss:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintSettingsFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->sendEmptyMessage(I)Z

    .line 1091
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnterFingerLock(Landroid/content/Context;)V

    return-void
.end method

.method private initFingprintData(Z)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->deleteLastFingerprintCompelete(Landroid/content/Context;)V

    .line 439
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerprintCount(Landroid/content/Context;I)V

    .line 440
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUIHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    const/16 v1, 0x3ed

    invoke-virtual {p1, v1, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private isFingerprintListEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 555
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 558
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 560
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 561
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    .line 562
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 563
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const-string p1, "FingerprintSettingsFragment"

    const-string p2, "isFingerprintListEqual = true"

    .line 568
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v0
.end method

.method private onClickAddFinger()V
    .locals 10

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClickAddFinger mIsSecure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintSettingsFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsSecure:Z

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->isFingerprintNewAlgorithm(Landroid/content/Context;)Z

    move-result v0

    .line 756
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->hasFingerprints(Landroid/content/Context;)Z

    move-result v2

    .line 757
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v3

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onClickAddFinger mIsDeleteOldFingerSuccuss = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsDeleteOldFingerSuccuss:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", opticalFingerPrint = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsOldAlgorithmLastFinger = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsOldAlgorithmLastFinger:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", newAlgorithm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hasFingerprints = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsDeleteOldFingerSuccuss:Z

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsOldAlgorithmLastFinger:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 764
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->showFingerExitCurrentDialog(Landroid/app/Activity;)V

    return-void

    .line 766
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->startEnrollActivity()V

    .line 767
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->pushUpTransitionInFragment(Landroid/app/Activity;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 770
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->initChallage(Z)V

    .line 771
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/16 v2, 0x11

    const/4 v3, 0x1

    iget v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    iget-wide v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    iget-boolean v7, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSupportFace:Z

    iget-wide v8, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFaceChallenge:J

    invoke-static/range {v1 .. v9}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setPasswordForResult(Landroid/app/Activity;IZIJZJ)V

    .line 774
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOpenPassword(Landroid/content/Context;I)V

    return-void
.end method

.method private refreshFingerSwitchPre()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    .line 522
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreUnlockEnabled(Landroid/content/Context;)V

    .line 529
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptEnabled(Landroid/content/Context;Z)V

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->isFileEncryptEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptFileEnabled(Landroid/content/Context;Z)V

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreSecurityVerifyEnabled(Landroid/content/Context;)V

    goto :goto_2

    .line 523
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    .line 524
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptEnabled(Landroid/content/Context;Z)V

    .line 525
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptFileEnabled(Landroid/content/Context;Z)V

    .line 526
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenter(Landroid/content/Context;Z)V

    .line 539
    :goto_2
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsFingerprintUnlockNeedDismiss:Z

    if-eqz v0, :cond_5

    .line 540
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    :cond_5
    return-void
.end method

.method private refreshFingerprintHidePreference()V
    .locals 11

    .line 1401
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    if-nez v0, :cond_0

    return-void

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1406
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1409
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "0"

    const-string v4, "hide_app_shortcut_finger"

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    if-le v0, v5, :cond_6

    .line 1410
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingersMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 1412
    new-instance v2, Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingersMap:Ljava/util/Map;

    goto :goto_1

    .line 1414
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 1417
    new-array v6, v2, [Ljava/lang/String;

    .line 1418
    new-array v2, v2, [Ljava/lang/String;

    .line 1419
    aput-object v3, v2, v1

    .line 1420
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f1207e3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 1421
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingersMap:Ljava/util/Map;

    aget-object v7, v2, v1

    aget-object v8, v6, v1

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v7, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v8, :cond_3

    .line 1425
    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1426
    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1427
    iget-object v10, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingersMap:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    aput-object v9, v2, v7

    .line 1429
    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const-string v8, "FingerprintSettingsFragment"

    const-string v9, "add Fingerprint but item is null"

    .line 1432
    invoke-static {v8, v9}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1435
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1436
    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v7, v2}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1437
    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v7, v6}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v6, v5}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEnabled(Z)V

    .line 1439
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getHideAppSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1440
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingersMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1441
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 1443
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v3, v2, v1

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1444
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_6
    if-gt v0, v5, :cond_7

    .line 1448
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1450
    :cond_7
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEnabled(Z)V

    .line 1451
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getHideAppSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshFingerprintUsagePreference()V
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1097
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1099
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintUsagePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 1101
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintUsagePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getFingerprintStatusText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    .line 1104
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintUsagePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 1105
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintUsagePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshFingerprints(J)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3f2

    .line 513
    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private retryFingerprint()V
    .locals 0

    return-void
.end method

.method private showDeleteFingerConfirmDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    .line 740
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12060a

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    const/4 v2, 0x0

    .line 741
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$iUM439F8FeGYxeDNWWWtODWuFX0;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$iUM439F8FeGYxeDNWWWtODWuFX0;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V

    const p1, 0x7f12074e

    .line 742
    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 747
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    .line 748
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private showEditFingerprintDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 5

    .line 646
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v1, 0x0

    const v2, 0x7f0d02e0

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0274

    .line 647
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorEditText;

    .line 648
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1209d2

    .line 649
    invoke-virtual {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 650
    invoke-virtual {v4, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f120491

    .line 651
    invoke-virtual {v0, v4, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;

    invoke-direct {v1, p0, v2, p1}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Lcom/color/support/widget/ColorEditText;Landroid/hardware/fingerprint/Fingerprint;)V

    const v4, 0x7f1212ca

    .line 652
    invoke-virtual {v0, v4, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 667
    invoke-virtual {v3}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 669
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 670
    invoke-virtual {v2, p1}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual {v2, p1}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 672
    invoke-virtual {v2}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 673
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/color/support/widget/ColorEditText;->setSelection(I)V

    .line 674
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    .line 675
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 677
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120afe

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 678
    invoke-static {v2, p1}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->addEmojiInputFilter(Landroid/widget/EditText;Landroid/widget/Toast;)V

    .line 679
    invoke-static {v2, p1}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->addIllgalNameInputFilter(Landroid/widget/EditText;Landroid/widget/Toast;)V

    .line 681
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onClickFinger(Landroid/content/Context;)V

    return-void
.end method

.method private showErrorDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDeleteErrorDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const p2, 0x7f120f1a

    const/4 v2, 0x0

    .line 310
    invoke-virtual {v0, p2, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 311
    new-instance p2, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 317
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDeleteErrorDialog:Lcolor/support/v7/app/AlertDialog;

    .line 318
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDeleteErrorDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDelErrorDlgShown:Z

    if-nez p1, :cond_1

    .line 321
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDelErrorDlgShown:Z

    .line 322
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mDeleteErrorDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method private showFaceTipDialog()V
    .locals 8

    .line 1188
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0210

    const/4 v3, 0x0

    .line 1189
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0137

    .line 1191
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1192
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1193
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0704cf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v6, v2

    .line 1195
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0704d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    .line 1197
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120f5c

    .line 1198
    invoke-virtual {v2, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$10;

    invoke-direct {v4, p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$10;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/widget/CheckBox;)V

    const v5, 0x7f120f5d

    .line 1199
    invoke-virtual {v2, v5, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$9;

    invoke-direct {v4, p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$9;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/widget/CheckBox;)V

    const/high16 v0, 0x1040000

    .line 1209
    invoke-virtual {v2, v0, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$8;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$8;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    .line 1218
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1225
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1226
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    const/4 v5, 0x0

    move-object v2, v0

    move v4, v6

    .line 1227
    invoke-virtual/range {v2 .. v7}, Lcolor/support/v7/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 1229
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private showScreenOffFingerDialog()V
    .locals 6

    .line 697
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "show_fingerprint_when_screen_off"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    .line 698
    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f121438

    .line 699
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f12147d

    .line 700
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 702
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121790

    .line 703
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$g4-gpunAcMsY9CpYp96K6GMt7pg;

    invoke-direct {v2, p0, v0, v3}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$g4-gpunAcMsY9CpYp96K6GMt7pg;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;I[Ljava/lang/CharSequence;)V

    .line 704
    invoke-virtual {v1, v3, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method private sideFingerPrintShowScreenOffFingerDialog()V
    .locals 4

    .line 719
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 720
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings;->getDefaultUnlockWay()I

    move-result v1

    const-string v2, "way_to_unlock_when_screen_off"

    .line 719
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    .line 721
    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f12170e

    .line 722
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f121098

    .line 723
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 725
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121790

    .line 726
    invoke-virtual {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$2zsUZH2GkUjWt9hxnqlVZMhtCxQ;

    invoke-direct {v3, p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$2zsUZH2GkUjWt9hxnqlVZMhtCxQ;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;I[Ljava/lang/CharSequence;)V

    .line 727
    invoke-virtual {v2, v1, v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method private startEnrollActivity()V
    .locals 1

    .line 813
    const-class v0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->startEnrollActivity(Ljava/lang/String;)V

    return-void
.end method

.method private startEnrollActivity(Ljava/lang/String;)V
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v1, "FingerprintSettingsFragment"

    if-nez v0, :cond_0

    const-string p1, "startEnroll mToken == null finish"

    .line 819
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .line 827
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    .line 828
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "has_fingerprint"

    .line 829
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v0, "hw_auth_token"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 833
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p1, "startEnrollActivity requestCode 1"

    .line 834
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onAddFinger(Landroid/content/Context;I)V

    return-void
.end method

.method private startFaceSettings()V
    .locals 3

    .line 333
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/coloros/settings/feature/face/FaceSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.USER_ID"

    .line 334
    iget v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "face_hw_auth__token"

    .line 335
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFaceToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "key_is_from_finger_settings"

    const/4 v2, 0x1

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "password"

    .line 337
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserPassword:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x110

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "FingerprintSettingsFragment"

    const-string v1, "start face settings error"

    .line 340
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopFingerprint()V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 849
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-void
.end method

.method private updateAddPreference()V
    .locals 7

    .line 968
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.integer.config_fingerprintMaxTemplatesPerUser"

    .line 969
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 968
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 970
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 971
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1209bb

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    const-string v2, "key_fingerprint_add"

    .line 972
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 973
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    xor-int/lit8 v0, v1, 0x1

    .line 974
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 1008
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 1009
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method


# virtual methods
.method protected final addFingerprintPreferences()V
    .locals 7

    const v0, 0x7f1500d2

    .line 446
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->addPreferencesFromResource(I)V

    .line 447
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "FingerprintSettingsFragment"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 448
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v5, 0x7f1500d8

    .line 449
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    .line 448
    invoke-virtual {v0, v4, v5, v6}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "optical_fingerprint_category"

    .line 450
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalFingerprintCategory:Landroidx/preference/PreferenceCategory;

    const-string v4, "optical_fingerprint_category_line"

    .line 451
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalFingerprintCategoryLine:Landroidx/preference/PreferenceCategory;

    .line 452
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalFingerprintCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v4, :cond_4

    .line 453
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "show_fingerprint_when_screen_off"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 455
    :goto_0
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalFingerprintCategory:Landroidx/preference/PreferenceCategory;

    .line 456
    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 457
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v6}, Lcom/coloros/settings/utils/al;->K(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/coloros/settings/utils/al;->a(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    :cond_1
    invoke-virtual {v5, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    const v1, 0x7f1209e6

    .line 462
    invoke-virtual {v5, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSummary(I)V

    goto :goto_2

    .line 464
    :cond_2
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    const v1, 0x7f12147d

    goto :goto_1

    :cond_3
    const v1, 0x7f121438

    :goto_1
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v5, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 467
    :goto_2
    new-instance v1, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0211

    invoke-direct {v1, v4, v5}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 468
    invoke-virtual {v1, v3}, Lcom/android/settingslib/widget/LayoutPreference;->setSelectable(Z)V

    .line 469
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_5

    :cond_4
    const-string v0, "mOpticalFingerprintCategory is null!"

    .line 471
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 473
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 474
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v5, 0x7f1500e5

    .line 475
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    .line 474
    invoke-virtual {v0, v4, v5, v6}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "side_fingerprint_category"

    .line 476
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSideFingerprintCategory:Landroidx/preference/PreferenceCategory;

    const-string v4, "side_fingerprint_category_line"

    .line 477
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSideFingerprintCategoryLine:Landroidx/preference/PreferenceCategory;

    .line 478
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSideFingerprintCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_8

    .line 479
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings;->getDefaultUnlockWay()I

    move-result v1

    const-string v4, "way_to_unlock_when_screen_off"

    .line 479
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v3

    .line 481
    :goto_3
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSideFingerprintCategory:Landroidx/preference/PreferenceCategory;

    .line 482
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 483
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    const v0, 0x7f121098

    goto :goto_4

    :cond_7
    const v0, 0x7f12170e

    :goto_4
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v1, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_5

    :cond_8
    const-string v0, "mSideFingerprintCategory is null!"

    .line 487
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_9
    :goto_5
    invoke-static {}, Lcom/coloros/settings/utils/al;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f150103

    .line 495
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->addPreferencesFromResource(I)V

    const-string v0, "optical_hide_app_shortcut_category"

    .line 496
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "hide_app_shortcut"

    .line 497
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    .line 498
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEnabled(Z)V

    .line 499
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getHideAppSummary(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalHideAppsFingerprint:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 501
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "fingerprint_category"

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 502
    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getOrder()I

    move-result v1

    add-int/2addr v1, v2

    .line 503
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    :cond_a
    return-void
.end method

.method protected final deleteAllFingerprint()V
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3f3

    .line 841
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final getFingerprintStatusText(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f121531

    .line 780
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-static {p1}, Lcom/coloros/settings/custom/b;->k(Landroid/content/Context;)Z

    move-result v2

    .line 782
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->isFingerprintUnlockDisabled(Landroid/content/Context;)Z

    move-result v3

    .line 783
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerUnlockEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 784
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerEncryptEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 785
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerEncryptFileEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 786
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isEncryptForSecurityCenterEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    const v2, 0x7f1209e8

    .line 788
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v5, :cond_2

    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const v2, 0x7f1209c2

    .line 794
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v6, :cond_4

    .line 797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const v2, 0x7f1209c3

    .line 800
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v7, :cond_6

    .line 802
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-nez v2, :cond_6

    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const v1, 0x7f1209e2

    .line 806
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHelpResource()I
    .locals 1

    const v0, 0x7f120ab1

    return v0
.end method

.method public final getMetricsCategory()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method protected final handleError(ILjava/lang/CharSequence;)V
    .locals 5

    .line 856
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 857
    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    if-eqz v0, :cond_2

    .line 875
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 876
    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 862
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 864
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUIHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 865
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUIHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {p1, v1, v3, v4}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 869
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 870
    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 880
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    :cond_3
    return-void
.end method

.method public final isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$addFingerprintItemPreferences$0$ColorFingerprintSettings$FingerprintSettingsFragment(Landroid/hardware/fingerprint/Fingerprint;Landroid/view/View;)V
    .locals 0

    .line 585
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->showDeleteFingerConfirmDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method public synthetic lambda$addFingerprintItemPreferences$1$ColorFingerprintSettings$FingerprintSettingsFragment(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .line 586
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->showEditFingerprintDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method public synthetic lambda$showDeleteFingerConfirmDialog$5$ColorFingerprintSettings$FingerprintSettingsFragment(Landroid/hardware/fingerprint/Fingerprint;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 743
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    const-string p3, "fingerprint_edit"

    const-string v0, "0"

    .line 3240
    invoke-static {p2, p3, p3, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {p2, p1, p3, v0}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 745
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onDeleteFinger(Landroid/content/Context;Z)V

    return-void
.end method

.method public synthetic lambda$showEditFingerprintDialog$2$ColorFingerprintSettings$FingerprintSettingsFragment(Lcom/color/support/widget/ColorEditText;Landroid/hardware/fingerprint/Fingerprint;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 654
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 658
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 659
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "rename Fingerprint : "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "FingerprintSettingsFragment"

    invoke-static {v0, p4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object p4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    const-string v0, "fingerprint_edit"

    const-string v1, "1"

    .line 4240
    invoke-static {p4, v0, v0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object p4, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p2

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {p4, p2, v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 662
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onRenameFinger(Landroid/content/Context;)V

    const-wide/16 p1, 0xc8

    .line 663
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->refreshFingerprints(J)V

    .line 665
    :cond_1
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showScreenOffFingerDialog$3$ColorFingerprintSettings$FingerprintSettingsFragment(I[Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 2

    if-eq p4, p1, :cond_1

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 707
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_fingerprint_when_screen_off"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 708
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 709
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOpticalFingerprintCategory:Landroidx/preference/PreferenceCategory;

    .line 710
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 711
    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 712
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$sideFingerPrintShowScreenOffFingerDialog$4$ColorFingerprintSettings$FingerprintSettingsFragment(I[Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 2

    if-eq p4, p1, :cond_1

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 730
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "way_to_unlock_when_screen_off"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 731
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 732
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSideFingerprintCategory:Landroidx/preference/PreferenceCategory;

    .line 733
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 734
    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 1116
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mSetupFinger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSetupFinger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintSettingsFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-ne p1, v4, :cond_4

    if-eqz v0, :cond_3

    .line 1123
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->setPassword(Landroid/content/Intent;)V

    .line 1125
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerList:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    .line 1127
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreUnlockEnabled(Landroid/content/Context;)V

    .line 1128
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreSecurityVerifyEnabled(Landroid/content/Context;)V

    :cond_1
    const/4 p1, 0x5

    if-ge v3, p1, :cond_2

    .line 1131
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->startEnrollActivity()V

    :cond_2
    return-void

    .line 1134
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSetupFinger:Z

    if-eqz p1, :cond_b

    .line 1135
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne p1, v4, :cond_9

    if-ne p2, v2, :cond_8

    if-eqz p3, :cond_5

    .line 1140
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUserPassword:[B

    if-nez p1, :cond_5

    .line 1141
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->setPassword(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string p1, "START_FACE data is null "

    .line 1143
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result p1

    .line 1146
    iget-object p3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p3

    .line 1147
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v5}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->isFingerprintNewAlgorithm(Landroid/content/Context;)Z

    move-result v5

    .line 1148
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v6}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v6

    .line 1149
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isDeleteOldFingerSuccuss"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsDeleteOldFingerSuccuss:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", opticalFingerPrint = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", newAlgorithm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", has3DCameraSupport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-boolean v7, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsDeleteOldFingerSuccuss:Z

    if-eqz v7, :cond_6

    if-eqz p3, :cond_6

    if-eqz v5, :cond_6

    .line 1154
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    const v7, 0x7f1209e0

    invoke-static {v5, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1155
    iput-boolean v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsDeleteOldFingerSuccuss:Z

    .line 1157
    :cond_6
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v5, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->initStatusCombination(Landroid/content/Context;Z)V

    if-nez v6, :cond_b

    if-eqz p3, :cond_b

    if-nez p1, :cond_b

    .line 1160
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "popup_face_jump_tip_dialog"

    invoke-static {p1, p3, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_7

    move v3, v4

    :cond_7
    if-eqz v3, :cond_b

    .line 1163
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->showFaceTipDialog()V

    goto :goto_2

    .line 1167
    :cond_8
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSetupFinger:Z

    if-eqz p1, :cond_b

    .line 1168
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_2

    :cond_9
    const/16 p3, 0x65

    if-ne p1, p3, :cond_b

    if-eq p2, v4, :cond_a

    if-ne p2, v2, :cond_b

    .line 1174
    :cond_a
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSetupFinger:Z

    if-eqz p1, :cond_b

    .line 1175
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->onClickAddFinger()V

    :cond_b
    :goto_2
    if-eqz v0, :cond_c

    if-ne p2, v2, :cond_c

    .line 1180
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez p1, :cond_c

    const-string p1, "mToken == null finish"

    .line 1182
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_c
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 898
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 899
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsSecure:Z

    .line 900
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mUIHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    .line 901
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "finger_service_asyn_looper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 903
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    .line 904
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->initFingerprint()V

    .line 905
    new-instance v0, Lcom/coloros/settings/feature/c/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/c/a;-><init>(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSearchAsyncHighlightManager:Lcom/coloros/settings/feature/c/a;

    .line 907
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "param_setup_finger"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSetupFinger:Z

    .line 908
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSetupFinger:Z

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsSecure:Z

    .line 910
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mIsSecure:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->onClickAddFinger()V

    :cond_0
    if-eqz p1, :cond_1

    .line 916
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 917
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "hw_auth_token"

    .line 918
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v3, "face_hw_auth__token"

    .line 919
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFaceToken:[B

    if-eq v2, v1, :cond_1

    if-eq v2, v0, :cond_1

    .line 920
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 921
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->finish()V

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1234
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->dismissDialog()V

    .line 1235
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->onDestroy()V

    .line 1236
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 1240
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mInitFingerListener:Lcom/coloros/settings/feature/fingerprint/utils/InitListener;

    .line 1241
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    if-eqz v1, :cond_1

    .line 1242
    invoke-virtual {v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1243
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1244
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mAsyncHandler:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1014
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->onPause()V

    .line 1015
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->stopFingerprint()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 686
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show_fingerprint_when_screen_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->showScreenOffFingerDialog()V

    return v1

    .line 689
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "way_to_unlock_when_screen_off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->sideFingerPrintShowScreenOffFingerDialog()V

    return v1

    .line 693
    :cond_1
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public final onResume()V
    .locals 4

    .line 983
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->onResume()V

    const-wide/16 v0, 0x0

    .line 988
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->refreshFingerprints(J)V

    .line 989
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 991
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOnUpdateListener:Lcom/coloros/settings/feature/c/a$a;

    .line 998
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSearchAsyncHighlightManager:Lcom/coloros/settings/feature/c/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mOnUpdateListener:Lcom/coloros/settings/feature/c/a$a;

    const-string v3, "fingerprint_category"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/settings/feature/c/a;->a(Ljava/lang/String;Lcom/coloros/settings/feature/c/a$a;)V

    .line 999
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mSearchAsyncHighlightManager:Lcom/coloros/settings/feature/c/a;

    .line 3054
    iput-boolean v2, v0, Lcom/coloros/settings/feature/c/a;->a:Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 928
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 929
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 930
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 931
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 932
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFaceToken:[B

    const-string v1, "face_hw_auth__token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method protected final removeFingerprintPreference(I)V
    .locals 3

    .line 937
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 938
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "FingerprintSettingsFragment"

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to remove preference with key "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 944
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can\'t find preference to remove: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

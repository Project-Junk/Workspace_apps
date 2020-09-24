.class public final Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityControlTimeoutPreferenceFragment;
.super Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;
.source "ColorAccessibilityControlTimeoutPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityControlTimeoutPreferenceFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityControlTimeoutPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityControlTimeoutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityControlTimeoutPreferenceFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150036

    return v0
.end method

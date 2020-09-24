.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$9_Fyw0B8fCyxlrAJJC4nGcYskGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$9_Fyw0B8fCyxlrAJJC4nGcYskGM;->f$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$9_Fyw0B8fCyxlrAJJC4nGcYskGM;->f$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->lambda$getLocalBluetoothManager$0$AccessibilityHearingAidPreferenceController()Lcom/android/settingslib/d/q;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ColorTimeoutPreferenceController$DYWdFewjPR_CKlrvEvNpbK7cDQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;

.field private final synthetic f$1:Lcom/android/settingslib/g$a;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;Lcom/android/settingslib/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ColorTimeoutPreferenceController$DYWdFewjPR_CKlrvEvNpbK7cDQ0;->f$0:Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ColorTimeoutPreferenceController$DYWdFewjPR_CKlrvEvNpbK7cDQ0;->f$1:Lcom/android/settingslib/g$a;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ColorTimeoutPreferenceController$DYWdFewjPR_CKlrvEvNpbK7cDQ0;->f$0:Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ColorTimeoutPreferenceController$DYWdFewjPR_CKlrvEvNpbK7cDQ0;->f$1:Lcom/android/settingslib/g$a;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->lambda$initTimeoutValueNum$0$ColorTimeoutPreferenceController(Lcom/android/settingslib/g$a;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

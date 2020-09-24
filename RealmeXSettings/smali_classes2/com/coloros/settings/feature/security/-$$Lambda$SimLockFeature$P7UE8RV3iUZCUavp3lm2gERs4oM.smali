.class public final synthetic Lcom/coloros/settings/feature/security/-$$Lambda$SimLockFeature$P7UE8RV3iUZCUavp3lm2gERs4oM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/-$$Lambda$SimLockFeature$P7UE8RV3iUZCUavp3lm2gERs4oM;->f$0:Lcom/android/settings/IccLockSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/security/-$$Lambda$SimLockFeature$P7UE8RV3iUZCUavp3lm2gERs4oM;->f$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0, p1, p2}, Lcom/coloros/settings/feature/security/SimLockFeature;->lambda$onCreate$0(Lcom/android/settings/IccLockSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

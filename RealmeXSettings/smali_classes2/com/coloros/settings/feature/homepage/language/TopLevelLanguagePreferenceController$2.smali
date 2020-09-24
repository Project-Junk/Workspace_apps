.class final Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$2;
.super Landroid/database/ContentObserver;
.source "TopLevelLanguagePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$2;->a:Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$2;->a:Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->access$000(Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

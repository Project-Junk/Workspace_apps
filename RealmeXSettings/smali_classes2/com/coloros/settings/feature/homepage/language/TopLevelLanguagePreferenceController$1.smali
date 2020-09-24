.class final Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$1;
.super Ljava/lang/Object;
.source "TopLevelLanguagePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->access$000(Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

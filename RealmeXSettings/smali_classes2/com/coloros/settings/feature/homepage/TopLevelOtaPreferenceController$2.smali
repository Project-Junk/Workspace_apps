.class final Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$2;
.super Ljava/lang/Object;
.source "TopLevelOtaPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->updateState(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;I)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$2;->b:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;

    iput p2, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$2;->b:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->access$200(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$2;->a:I

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->f(Landroid/content/Context;I)V

    return-void
.end method

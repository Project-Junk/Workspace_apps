.class final Lcom/coloros/settings/feature/language/LocaleSettingFragment$1;
.super Ljava/lang/Object;
.source "LocaleSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/language/LocaleSettingFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/language/LocaleSettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/language/LocaleSettingFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coloros/settings/feature/language/LocaleSettingFragment$1;->a:Lcom/coloros/settings/feature/language/LocaleSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/language/LocaleSettingFragment$1;->a:Lcom/coloros/settings/feature/language/LocaleSettingFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/language/LocaleSettingFragment;->highlightPreferenceForce()V

    return-void
.end method

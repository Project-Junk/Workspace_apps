.class final Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings$1;
.super Ljava/lang/Object;
.source "RecommendSettings.java"

# interfaces
.implements Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings$1;->a:Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.wizard.STATEMENTPAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings$1;->a:Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

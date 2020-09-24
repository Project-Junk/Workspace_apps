.class public final synthetic Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$oJmcgU6_1Fx5a1Gx9eEDaG1gU6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Landroid/database/MatrixCursor;


# direct methods
.method public synthetic constructor <init>(Landroid/database/MatrixCursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$oJmcgU6_1Fx5a1Gx9eEDaG1gU6I;->f$0:Landroid/database/MatrixCursor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$oJmcgU6_1Fx5a1Gx9eEDaG1gU6I;->f$0:Landroid/database/MatrixCursor;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;->lambda$null$0(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

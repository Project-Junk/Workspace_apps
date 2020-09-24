.class public final synthetic Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$K7S7aePaPKtHmVuLrWrKEkgjyR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;

.field private final synthetic f$1:Landroid/database/MatrixCursor;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;Landroid/database/MatrixCursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$K7S7aePaPKtHmVuLrWrKEkgjyR8;->f$0:Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;

    iput-object p2, p0, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$K7S7aePaPKtHmVuLrWrKEkgjyR8;->f$1:Landroid/database/MatrixCursor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$K7S7aePaPKtHmVuLrWrKEkgjyR8;->f$0:Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;

    iget-object p0, p0, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$K7S7aePaPKtHmVuLrWrKEkgjyR8;->f$1:Landroid/database/MatrixCursor;

    check-cast p1, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;->lambda$queryNonIndexableKeys$1$SettingsSearchIndexablesProvider(Landroid/database/MatrixCursor;Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;)V

    return-void
.end method

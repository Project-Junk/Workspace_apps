.class public final synthetic Lcom/coloros/settings/utils/-$$Lambda$au$a$xmDQc2AlziNqisc481DsGVcsmh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/utils/-$$Lambda$au$a$xmDQc2AlziNqisc481DsGVcsmh4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/utils/-$$Lambda$au$a$xmDQc2AlziNqisc481DsGVcsmh4;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/au$a;->lambda$xmDQc2AlziNqisc481DsGVcsmh4(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

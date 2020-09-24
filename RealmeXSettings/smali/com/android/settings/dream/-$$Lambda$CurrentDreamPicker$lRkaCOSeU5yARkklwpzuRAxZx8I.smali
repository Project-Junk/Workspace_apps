.class public final synthetic Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$lRkaCOSeU5yARkklwpzuRAxZx8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$lRkaCOSeU5yARkklwpzuRAxZx8I;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$lRkaCOSeU5yARkklwpzuRAxZx8I;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/settingslib/i/a$a;

    invoke-static {v0, p1}, Lcom/android/settings/dream/CurrentDreamPicker;->lambda$lRkaCOSeU5yARkklwpzuRAxZx8I(Ljava/util/Map;Lcom/android/settingslib/i/a$a;)V

    return-void
.end method

.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$a$zIH438dWQgcB8pONdCFb_4ZoIvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(JLjava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$a$zIH438dWQgcB8pONdCFb_4ZoIvo;->f$0:J

    iput-object p3, p0, Lcom/android/settingslib/wifi/-$$Lambda$a$zIH438dWQgcB8pONdCFb_4ZoIvo;->f$1:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/settingslib/wifi/-$$Lambda$a$zIH438dWQgcB8pONdCFb_4ZoIvo;->f$0:J

    iget-object v2, p0, Lcom/android/settingslib/wifi/-$$Lambda$a$zIH438dWQgcB8pONdCFb_4ZoIvo;->f$1:Ljava/util/Iterator;

    check-cast p1, Lcom/android/settingslib/wifi/b;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settingslib/wifi/a;->lambda$zIH438dWQgcB8pONdCFb_4ZoIvo(JLjava/util/Iterator;Lcom/android/settingslib/wifi/b;)V

    return-void
.end method

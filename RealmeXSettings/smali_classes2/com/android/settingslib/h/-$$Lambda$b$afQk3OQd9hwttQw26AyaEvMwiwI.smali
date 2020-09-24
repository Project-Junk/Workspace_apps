.class public final synthetic Lcom/android/settingslib/h/-$$Lambda$b$afQk3OQd9hwttQw26AyaEvMwiwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/h/-$$Lambda$b$afQk3OQd9hwttQw26AyaEvMwiwI;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/h/-$$Lambda$b$afQk3OQd9hwttQw26AyaEvMwiwI;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/settingslib/h/c;

    check-cast p2, Lcom/android/settingslib/h/c;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/h/b;->lambda$afQk3OQd9hwttQw26AyaEvMwiwI(Ljava/lang/String;Lcom/android/settingslib/h/c;Lcom/android/settingslib/h/c;)I

    move-result p1

    return p1
.end method

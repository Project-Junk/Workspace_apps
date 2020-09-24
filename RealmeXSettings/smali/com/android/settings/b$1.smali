.class final Lcom/android/settings/b$1;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field a:Ljava/text/Collator;

.field final synthetic b:Lcom/android/settings/b;


# direct methods
.method constructor <init>(Lcom/android/settings/b;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/settings/b$1;->b:Lcom/android/settings/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/b$1;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 160
    check-cast p1, Lcom/android/settings/b$b;

    check-cast p2, Lcom/android/settings/b$b;

    .line 1164
    iget-object v0, p0, Lcom/android/settings/b$1;->a:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/android/settings/b$b;->a()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/settings/b$b;->a()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$lfzP9pEZ3pIBGxnYrQHjPhWuokU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ljava/text/Collator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$lfzP9pEZ3pIBGxnYrQHjPhWuokU;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$lfzP9pEZ3pIBGxnYrQHjPhWuokU;->f$0:Ljava/text/Collator;

    check-cast p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;

    check-cast p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;

    invoke-static {v0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$lfzP9pEZ3pIBGxnYrQHjPhWuokU(Ljava/text/Collator;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;)I

    move-result p1

    return p1
.end method
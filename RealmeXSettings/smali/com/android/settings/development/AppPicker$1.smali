.class final Lcom/android/settings/development/AppPicker$1;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/development/AppPicker$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AppPicker$1;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 186
    check-cast p1, Lcom/android/settings/development/AppPicker$b;

    check-cast p2, Lcom/android/settings/development/AppPicker$b;

    .line 1189
    iget-object v0, p0, Lcom/android/settings/development/AppPicker$1;->a:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/settings/development/AppPicker$b;->b:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/android/settings/development/AppPicker$b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

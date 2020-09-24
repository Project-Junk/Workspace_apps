.class final Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$1;
.super Ljava/lang/Object;
.source "GameDriverAppPreferenceController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$1;->a:Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 235
    check-cast p1, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;

    check-cast p2, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;

    .line 1237
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

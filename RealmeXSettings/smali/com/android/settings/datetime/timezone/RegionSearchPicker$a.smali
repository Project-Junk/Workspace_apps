.class final Lcom/android/settings/datetime/timezone/RegionSearchPicker$a;
.super Ljava/lang/Object;
.source "RegionSearchPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/icu/text/Collator;


# direct methods
.method constructor <init>(Landroid/icu/text/Collator;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$a;->a:Landroid/icu/text/Collator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 178
    check-cast p1, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;

    check-cast p2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;

    .line 1187
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$a;->a:Landroid/icu/text/Collator;

    .line 2149
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->b:Ljava/lang/String;

    .line 3149
    iget-object p2, p2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->b:Ljava/lang/String;

    .line 1187
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

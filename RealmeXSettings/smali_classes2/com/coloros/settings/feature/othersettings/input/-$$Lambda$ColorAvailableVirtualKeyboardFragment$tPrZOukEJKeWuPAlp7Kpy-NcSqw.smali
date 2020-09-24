.class public final synthetic Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorAvailableVirtualKeyboardFragment$tPrZOukEJKeWuPAlp7Kpy-NcSqw;
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

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorAvailableVirtualKeyboardFragment$tPrZOukEJKeWuPAlp7Kpy-NcSqw;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorAvailableVirtualKeyboardFragment$tPrZOukEJKeWuPAlp7Kpy-NcSqw;->f$0:Ljava/text/Collator;

    check-cast p1, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;

    check-cast p2, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;

    invoke-static {v0, p1, p2}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->lambda$tPrZOukEJKeWuPAlp7Kpy-NcSqw(Ljava/text/Collator;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)I

    move-result p1

    return p1
.end method
